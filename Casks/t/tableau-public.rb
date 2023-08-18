cask "tableau-public" do
  version "2023.2.1"
  sha256 "ada4bb997f02b42f4dc90fd257dfa2d8d88aa414e4b021fc9326d4c6cbffadfc"

  url "https://downloads.tableau.com/public/TableauPublic-#{version.dots_to_hyphens}.dmg"
  name "Tableau Public"
  desc "Explore, create and publicly share data visualizations online"
  homepage "https://public.tableau.com/s/"

  livecheck do
    url "https://www.tableau.com/downloads/public/mac"
    strategy :header_match do |headers|
      headers["location"][/TableauPublic[._-]v?(\d+(?:-\d+)+)\.dmg/i, 1].tr("-", ".")
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
