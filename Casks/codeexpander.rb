cask "codeexpander" do
  version "3.5.3"
  sha256 "f36cdc441635343f892d53292f88ecef6f3fee9bd40c6060f4bf47c35200a109"

  url "https://github.com/oncework/codeexpander/releases/download/#{version.major_minor}.x/CodeExpander-#{version}.dmg"
  appcast "https://github.com/oncework/codeexpander/releases.atom",
          must_contain: version.major_minor
  name "CodeExpander"
  homepage "https://github.com/oncework/codeexpander"

  app "CodeExpander.app"
end
