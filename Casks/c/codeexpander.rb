cask "codeexpander" do
  version "4.3.6"
  sha256 "ed010ce433d31b9a04f82f86474f2ddcda87092e2c9d2060be2bc2e091683167"

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
