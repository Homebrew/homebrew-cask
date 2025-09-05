cask "opencat" do
  version "2.70.0,1617"
  sha256 "2f7644383617e14022b4c1ed9c7c9ebb13046b055448731772a04d801832952f"

  url "https://opencat.app/releases/OpenCat-#{version.csv.first}.#{version.csv.second}.dmg"
  name "OpenCat"
  desc "Native AI chat client"
  homepage "https://opencat.app/"

  livecheck do
    url "https://opencat.app/releases/versions.xml"
    strategy :sparkle do |item|
      short_version = (item.short_version.count(".") >= 2) ? item.short_version : "#{item.short_version}.0"
      "#{short_version},#{item.version}"
    end
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "OpenCat.app"

  zap trash: [
    "~/Library/Application Scripts/tech.baye.OpenCat",
    "~/Library/Containers/tech.baye.OpenCat",
    "~/Library/Group Containers/group.tech.baye.openai",
    "~/Library/Saved Application State/tech.baye.OpenCat.savedState",
  ]
end
