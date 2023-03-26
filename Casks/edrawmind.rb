cask "edrawmind" do
  version "10.0.2,5378"
  sha256 "889d60a53af50bc6a5778cbda1399f18ccae6287a9deb82183e461c4401c08a0"

  url "https://download.edrawsoft.com/edrawmind_full#{version.csv.second}.dmg"
  name "EdrawMind"
  desc "Mind mapping software"
  homepage "https://www.edrawsoft.com/edrawmind/"

  livecheck do
    url "https://www.edrawsoft.com/download-edrawmind.html"
    strategy :page_match do |page|
      match = page.match(/for\s+Mac.*?(\d+(?:\.\d+)+).*?edrawmind[.-_]full(\d+)\./m)
      "#{match[1]},#{match[2]}" if match
    end
  end

  app "EdrawMind.app"

  zap trash: [
    "~/Library/Preferences/com.edrawsoft.mindmaster.plist",
    "~/Library/Saved Application State/com.edrawsoft.mindmaster.savedState",
  ]
end
