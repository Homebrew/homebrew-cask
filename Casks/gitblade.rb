cask "gitblade" do
  version "1.0.8"
  sha256 "51b261ee679048c2799a66439d8599d1ec5fa1592713993e85fa641eefeab274"

  url "https://gitblade.com/dl/gitblade-#{version}-darwin-x64.dmg"
  appcast "https://gitblade.com/releases"
  name "GitBlade"
  homepage "https://gitblade.com/"

  app "GitBlade.app"
end
