cask "gitblade" do
  version "1.0.6"
  sha256 "cc759c3242e3ea26aea46b778bbcd7f2ca7db1ead5895f16db7e66a39d05fc03"

  url "https://gitblade.com/dl/gitblade-#{version}-darwin-x64.dmg"
  appcast "https://gitblade.com/releases"
  name "GitBlade"
  homepage "https://gitblade.com/"

  app "GitBlade.app"
end
