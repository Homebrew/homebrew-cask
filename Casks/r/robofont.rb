cask "robofont" do
  version "4.4,2310101500"
  sha256 :no_check

  url "https://static.typemytype.com/robofont/RoboFont.dmg",
      verified: "static.typemytype.com/robofont/"
  name "RoboFont"
  desc "Font editor"
  homepage "https://robofont.com/"

  livecheck do
    url "https://doc.robofont.com/appcast.xml"
    strategy :page_match do |page|
      match = page.match(/Version\s(\d+(?:\.\d+)+)\s\(build\s(\d+(?:\.\d+)*)\)/i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "RoboFont.app"

  zap trash: [
    "~/Library/Application Support/RoboFont",
    "~/Library/Preferences/com.typemytype.robofont#{version.major}.plist",
    "~/Library/Saved Application State/com.typemytype.robofont#{version.major}.savedState",
  ]
end
