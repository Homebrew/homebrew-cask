cask "solvespace" do
  version "3.3"
  sha256 "9a83620fb2a34dd26961e35a8054a2ee68f36e3dfeaaefb443d3308c9cfc1f11"

  url "https://github.com/solvespace/solvespace/releases/download/v#{version}/solvespace.dmg"
  name "SolveSpace"
  desc "Parametric 2d/3d CAD"
  homepage "https://solvespace.com/index.pl/"

  depends_on :macos

  app "SolveSpace.app"

  zap trash: [
    "~/Library/Preferences/com.solvespace.plist",
    "~/Library/Saved Application State/com.solvespace.savedState",
  ]
end
