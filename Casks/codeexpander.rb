cask "codeexpander" do
  version "3.5.9"
  sha256 "aa6b300011b09f2138163ffa8037767ca3b7e576c0f6e40dfc1cd43253720afa"

  url "https://github.com/oncework/codeexpander/releases/download/#{version.major_minor}.x/CodeExpander-#{version}.dmg"
  name "CodeExpander"
  desc "Cloud synchronization development tool"
  homepage "https://github.com/oncework/codeexpander"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/CodeExpander-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "CodeExpander.app"
end
