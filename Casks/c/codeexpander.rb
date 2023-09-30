cask "codeexpander" do
  version "4.3.1"
  sha256 "d2288cf347f7c23f40e6f6ac92c3f077c1700d335c71509b52f935fdc0c0fb45"

  url "https://github.com/oncework/codeexpander/releases/download/#{version.major_minor}.x/CodeExpander-#{version}.dmg"
  name "CodeExpander"
  desc "Cloud synchronization development tool"
  homepage "https://github.com/oncework/codeexpander"

  livecheck do
    url :url
    regex(/^CodeExpander[._-]v?(\d+(?:\.\d+)+)\.dmg$/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  app "CodeExpander.app"

  zap trash: [
    "~/.codeexpander",
    "~/Documents/codeexpander",
    "~/Library/Logs/Codeexpander",
    "~/Library/Preferences/com.codeexpander.plist",
    "~/Library/Saved Application State/com.codeexpander.savedState",
  ]
end
