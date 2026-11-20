cask "dashcam-viewer" do
  arch arm: "_AppleCPU"

  version "4.0.9"
  sha256 arm:   "7efaa98037d82bd6915debbe7f9647493149b43653f80dfc779d3e4d6d08baf2",
         intel: "aabd7710674a1f0d887757121d44c49b25beaa65b68cf2b04c31290694ec240e"

  url "https://filedn.com/l2s8TAtm4VASBX72ds0zYD8/dcv/Dashcam_Viewer_v#{version}#{arch}.dmg"
  name "Dashcam Viewer"
  name "Dashcam Viewer by Earthshine Software"
  desc "View videos, GPS data, and G-force data recorded by dashcams and action cams"
  homepage "https://dashcamviewer.com/"

  livecheck do
    url "https://dashcamviewer.com/free-trial/"
    regex(%r{href=.*?/Dashcam[._-]Viewer[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: :monterey

  app "Dashcam Viewer.app"

  uninstall quit: "com.earthshinesw.DashcamViewer"

  zap trash: [
    "~/Library/Application Support/earthshinesw",
    "~/Library/Caches/earthshinesw",
    "~/Library/Preferences/com.earthshinesw.DashcamViewer.plist",
  ]
end
