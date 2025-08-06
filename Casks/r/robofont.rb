cask "robofont" do
  version "4.5,2410282152"
  sha256 "f44eb78425aab433877d5dee6b463891f36c4ebdb2965def8c36421b77e105b6"

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

  depends_on macos: ">= :sierra"

  app "RoboFont.app"

  zap trash: [
    "~/Library/Application Support/RoboFont",
    "~/Library/Preferences/com.typemytype.robofont#{version.major}.plist",
    "~/Library/Saved Application State/com.typemytype.robofont#{version.major}.savedState",
  ]
end
