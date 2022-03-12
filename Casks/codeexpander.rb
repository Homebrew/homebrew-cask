cask "codeexpander" do
  version "4.1.0"
  sha256 "f75e2ff247a9ca78dbc5c938bbadb9b3d9801ee5bb7ff9144f143f0bfa1cd036"

  url "https://github.com/oncework/codeexpander/releases/download/#{version.major_minor}.x/CodeExpander-#{version}.dmg"
  name "CodeExpander"
  desc "Cloud synchronization development tool"
  homepage "https://github.com/oncework/codeexpander"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/CodeExpander-(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "CodeExpander.app"
end
