cask "codeexpander" do
  version "3.5.4"
  sha256 "8f62f78502da7196e3505f7db195d4fe0f1272629a098e8fa9cbb45fdb18dc80"

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
