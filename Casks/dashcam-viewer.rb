cask "dashcam-viewer" do
  version "3.5.1"
  sha256 "fd9a8bbe988ab0069175c9fc19a20b4c12822cf293ebc88d1083e8be0137b996"

  # filedn.com/l2s8TAtm4VASBX72ds0zYD8/dcv/ was verified as official when first introduced to the cask
  url "https://filedn.com/l2s8TAtm4VASBX72ds0zYD8/dcv/Dashcam_Viewer_v#{version}.dmg"
  appcast "https://dashcamviewer.com/"
  name "Dashcam Viewer"
  name "Dashcam Viewer by Earthshine Software"
  homepage "https://dashcamviewer.com/"

  app "Dashcam Viewer.app"
end
