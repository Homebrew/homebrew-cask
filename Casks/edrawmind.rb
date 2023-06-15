cask "edrawmind" do
  version "10.5.3,5378"
  sha256 "51d73cd16d96af0dd6f5becfa868fc662ccec02a5162c2e2bbd994d4d10c7c51"

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
