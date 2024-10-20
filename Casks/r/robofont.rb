cask "robofont" do
  version "4.4,2310101500"
  sha256 "0b110f54731a79518cdbce23869d03553ebf04ac26d2b1c230777d3e0f809562"

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

  caveats do
    requires_rosetta
  end
end
