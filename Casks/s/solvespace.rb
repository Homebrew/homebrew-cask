cask "solvespace" do
  version "3.2"
  sha256 "816deef2417cd635b768a43f153b6699d3e428b2f6b1e434658d2a7568b69357"

  url "https://github.com/solvespace/solvespace/releases/download/v#{version}/solvespace.dmg",
      verified: "github.com/"
  name "SolveSpace"
  desc "Parametric 2d/3d CAD"
  homepage "https://solvespace.com/index.pl/"

  depends_on macos: ">= :big_sur"

  app "SolveSpace.app"

  zap trash: [
    "~/Library/Preferences/com.solvespace.plist",
    "~/Library/Saved Application State/com.solvespace.savedState",
  ]
end
