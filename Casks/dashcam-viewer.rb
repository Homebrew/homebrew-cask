cask "dashcam-viewer" do
  version "3.9.1"
  sha256 "fadb44fa5e504b28542466b8d32ca38ce4927a3013139bd64a5e3472e286520c"

  url "https://filedn.com/l2s8TAtm4VASBX72ds0zYD8/dcv/Dashcam_Viewer_v#{version}.dmg",
      verified: "filedn.com/l2s8TAtm4VASBX72ds0zYD8/dcv/"
  name "Dashcam Viewer"
  name "Dashcam Viewer by Earthshine Software"
  desc "View videos, GPS data, and G-force data recorded by dashcams and action cams"
  homepage "https://dashcamviewer.com/"

  livecheck do
    url "https://dashcamviewer.com/free-trial/"
    regex(%r{href=.*?/Dashcam[._-]Viewer[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :mojave"

  app "Dashcam Viewer.app"

  zap trash: [
    "~/Library/Application Support/earthshinesw",
    "~/Library/Caches/earthshinesw",
    "~/Library/Preferences/com.earthshinesw.DashcamViewer.plist",
  ]
end
