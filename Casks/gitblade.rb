cask "gitblade" do
  version "1.0.8"
  sha256 "51b261ee679048c2799a66439d8599d1ec5fa1592713993e85fa641eefeab274"

  url "https://gitblade.com/dl/gitblade-#{version}-darwin-x64.dmg"
  name "GitBlade"
  desc "Graphical client for Git"
  homepage "https://gitblade.com/"

  livecheck do
    url "https://gitblade.com/#download"
    regex(%r{href=.*?/gitblade[._-]v?(\d+(?:\.\d+)*)[._-]darwin[._-]x64\.dmg}i)
  end

  app "GitBlade.app"
end
