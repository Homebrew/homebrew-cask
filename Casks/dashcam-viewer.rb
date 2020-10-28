cask "dashcam-viewer" do
  version "3.6.0"
  sha256 "7377a8d98c5478be9392a070825c2b81db85cfdcc16eb42dbab56f652a56bd60"

  # filedn.com/l2s8TAtm4VASBX72ds0zYD8/dcv/ was verified as official when first introduced to the cask
  url "https://filedn.com/l2s8TAtm4VASBX72ds0zYD8/dcv/Dashcam_Viewer_v#{version}.dmg"
  appcast "https://dashcamviewer.com/"
  name "Dashcam Viewer"
  name "Dashcam Viewer by Earthshine Software"
  homepage "https://dashcamviewer.com/"

  app "Dashcam Viewer.app"
end
