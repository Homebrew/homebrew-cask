cask "dashcam-viewer" do
  version "3.6.6"
  sha256 "586f67c9bd9dddfd57237a46810022148631a15b1cbd54f0b8172f227e180069"

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
