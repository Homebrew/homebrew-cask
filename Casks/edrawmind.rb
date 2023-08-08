cask "edrawmind" do
  version "10.7.2,5378"
  sha256 "a5a612d9c8daa86b05c65cc03ed45c867c1cec019a19a712c5b363a421d784d1"

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
