cask "robofont" do
  version "4.5,2410251426"
  sha256 "67ee65c74a2b9f8488e57aa99b64b1f8f22a4bb3cafb9baaf6a889d3deee0953"

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
