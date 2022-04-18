cask "codeexpander" do
  version "4.2.9"
  sha256 "8f0df002adfbd54df2c9923fb6f124f07303b5d327948f8b5db69984189ec433"

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
