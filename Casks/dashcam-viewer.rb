cask "dashcam-viewer" do
  version "3.6.1"
  sha256 "ac77ef84ea30ff0294b855cfe1f74baf0d82488166552cfd1b55b48c3b3ca7f3"

  url "https://filedn.com/l2s8TAtm4VASBX72ds0zYD8/dcv/Dashcam_Viewer_v#{version}.dmg",
      verified: "filedn.com/l2s8TAtm4VASBX72ds0zYD8/dcv/"
  appcast "https://dashcamviewer.com/"
  name "Dashcam Viewer"
  name "Dashcam Viewer by Earthshine Software"
  homepage "https://dashcamviewer.com/"

  app "Dashcam Viewer.app"
end
