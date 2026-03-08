cask "robofont" do
  version "4.6,2602231550"
  sha256 "d4f84518091be37aa9e4d7695a4154200bf28a9ca98825eb8ad49cf19e1a44a1"

  url "https://static.typemytype.com/robofont/versionHistory/RoboFont_#{version.csv.first}_#{version.csv.second}.dmg",
      verified: "static.typemytype.com/robofont/"
  name "RoboFont"
  desc "Font editor"
  homepage "https://robofont.com/"

  livecheck do
    url "https://doc.robofont.com/appcast.xml"
    regex(/(?:buil[dt]\s+)?v?(\d+(?:\.\d+)*)/i)
    strategy :sparkle do |item, regex|
      "#{item.short_version},#{item.version[regex, 1]}"
    end
  end

  app "RoboFont.app"

  zap trash: [
    "~/Library/Application Support/RoboFont",
    "~/Library/Preferences/com.typemytype.robofont#{version.major}.plist",
    "~/Library/Saved Application State/com.typemytype.robofont#{version.major}.savedState",
  ]
end
