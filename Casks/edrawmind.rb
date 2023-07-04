cask "edrawmind" do
  version "10.6.4,5378"
  sha256 "f7727bf58a2896204b1de7e91fc4e95ccbf20d65ac97c9ed9e5231726d392266"

  url "https://download.edrawsoft.com/edrawmind_full#{version.csv.second}.dmg"
  name "EdrawMind"
  desc "Mind mapping software"
  homepage "https://www.edrawsoft.com/edrawmind/"

  livecheck do
    url "https://www.edrawsoft.com/download-edrawmind.html"
    strategy :page_match do |page|
      match = page.match(/for\s+Mac.*?(\d+(?:\.\d+)+).*?edrawmind[._-]full(\d+)\./m)
      "#{match[1]},#{match[2]}" if match
    end
  end

  app "EdrawMind.app"

  zap trash: [
    "~/Library/Preferences/com.edrawsoft.mindmaster.plist",
    "~/Library/Saved Application State/com.edrawsoft.mindmaster.savedState",
  ]
end
