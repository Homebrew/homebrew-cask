cask "solvespace" do
  version "3.2"
  sha256 "714ca23cc6989c1fd842b353412ef9ba24a23eb2f17446c1bc91740d79869b51"

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
