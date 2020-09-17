cask "dashcam-viewer" do
  version "3.5.2"
  sha256 "10185deb860485661feb3e9b12dcabca31507f89d3e0a659d4f9a334d0fb1777"

  # filedn.com/l2s8TAtm4VASBX72ds0zYD8/dcv/ was verified as official when first introduced to the cask
  url "https://filedn.com/l2s8TAtm4VASBX72ds0zYD8/dcv/Dashcam_Viewer_v#{version}.dmg"
  appcast "https://dashcamviewer.com/"
  name "Dashcam Viewer"
  name "Dashcam Viewer by Earthshine Software"
  homepage "https://dashcamviewer.com/"

  app "Dashcam Viewer.app"
end
