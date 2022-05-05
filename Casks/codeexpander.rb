cask "codeexpander" do
  version "4.2.13"
  sha256 "d2700dc3ae0dfea4727a8ce289a4238c43b72fdbfb82ec7d0db42c42b137278a"

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
