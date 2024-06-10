cask "tableau-public" do
  version "2024.1.3"
  sha256 "4d411d447e60266f89de40ec4ba12b3d713fd2769d18892a96ff195f5368dc37"

  url "https://downloads.tableau.com/public/TableauPublic-#{version.dots_to_hyphens}.dmg",
      user_agent: "curl/8.7.1"
  name "Tableau Public"
  desc "Explore, create and publicly share data visualisations online"
  homepage "https://public.tableau.com/s/"

  livecheck do
    url "https://downloads.tableau.com/TableauAutoUpdate.xml"
    strategy :xml do |xml|
      xml.get_elements("//version").map { |item| item.attributes["releaseNotesVersion"] }
    end
  end

  pkg "Tableau Public.pkg"

  uninstall pkgutil: [
    "com.tableausoftware.FLEXNet.*",
    "com.tableausoftware.Public.app",
  ]

  zap trash: [
    "~/Library/Caches/com.tableau.caching",
    "~/Library/Caches/com.tableausoftware.MapTiles",
  ]
end
