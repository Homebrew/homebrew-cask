cask "dashcam-viewer" do
  version "3.6.5"
  sha256 "8ccb39854b7f524bdcbfb0fc84648e110848110b399d219c550070bce2ee2086"

  url "https://filedn.com/l2s8TAtm4VASBX72ds0zYD8/dcv/Dashcam_Viewer_v#{version}.dmg",
      verified: "filedn.com/l2s8TAtm4VASBX72ds0zYD8/dcv/"
  name "Dashcam Viewer"
  name "Dashcam Viewer by Earthshine Software"
  homepage "https://dashcamviewer.com/"

  livecheck do
    url "https://dashcamviewer.com/"
    strategy :page_match
    regex(%r{href=.*?/Dashcam_Viewer_v?(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "Dashcam Viewer.app"
end
