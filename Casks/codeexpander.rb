cask "codeexpander" do
  version "3.5.8"
  sha256 "7544b889362c72935e9dbfc4b52bc512103af349f61e5abcdfa7901aa3f73897"

  url "https://github.com/oncework/codeexpander/releases/download/#{version.major_minor}.x/CodeExpander-#{version}.dmg"
  name "CodeExpander"
  homepage "https://github.com/oncework/codeexpander"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/CodeExpander-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "CodeExpander.app"
end
