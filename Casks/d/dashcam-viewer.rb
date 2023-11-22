cask "dashcam-viewer" do
  version "3.9.5"
  sha256 "f6ee230ae848f984f8d21bc3b8257a9a7e1554fa31d6f85b943287f07e50b2cd"

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
