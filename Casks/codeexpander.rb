cask "codeexpander" do
  version "4.2.4"
  sha256 "0047fd2fdd03f1a0669bbc9897df10da9756e1138696ac29c16cc5c917ba1ab3"

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
