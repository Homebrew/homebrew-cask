cask "dashcam-viewer" do
  arch arm: "_AppleCPU"

  version "4.0.8"
  sha256 arm:   "4eb8ecd1f4f57700b94232025d38a6cbb978ad05cb99a3a0e3edff3b2d02a7a1",
         intel: "a0b9d103030178ffce30c3946f317b48fa8f970883887466b933080cd0ab63cb"

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

  zap trash: [
    "~/Library/Application Support/earthshinesw",
    "~/Library/Caches/earthshinesw",
    "~/Library/Preferences/com.earthshinesw.DashcamViewer.plist",
  ]
end
