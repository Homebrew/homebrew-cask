cask "dashcam-viewer" do
  version "3.5.1"
  sha256 "993d42ad4992c3552ad0645ffa9cec42748a5f167c04db3904915d7eab41dfa3"

  # filedn.com/l2s8TAtm4VASBX72ds0zYD8/dcv/ was verified as official when first introduced to the cask
  url "https://filedn.com/l2s8TAtm4VASBX72ds0zYD8/dcv/Dashcam_Viewer_v#{version}.dmg"
  appcast "https://dashcamviewer.com/"
  name "Dashcam Viewer"
  name "Dashcam Viewer by Earthshine Software"
  homepage "https://dashcamviewer.com/"

  app "Dashcam Viewer.app"
end
