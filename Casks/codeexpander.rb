cask "codeexpander" do
  version "4.2.3"
  sha256 "74140bda9d70c97c7d9c9fd1d22f768508702e3f2b276000fb9af4e4c26d81df"

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
