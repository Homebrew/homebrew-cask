cask "dashcam-viewer" do
  version "3.6.7"
  sha256 "854a9dfc26e4c51c2a0b12f83261adec757a7b519ea5458a35c71c83d4feb6fd"

  url "https://filedn.com/l2s8TAtm4VASBX72ds0zYD8/dcv/Dashcam_Viewer_v#{version}.dmg",
      verified: "filedn.com/l2s8TAtm4VASBX72ds0zYD8/dcv/"
  name "Dashcam Viewer"
  name "Dashcam Viewer by Earthshine Software"
  desc "View videos, GPS data, and G-force data recorded by dashcams and action cams"
  homepage "https://dashcamviewer.com/"

  livecheck do
    url "https://dashcamviewer.com/free-trial/"
    regex(%r{href=.*?/Dashcam_Viewer_v?(\d+(?:\.\d+)*)\.dmg}i)
  end

  depends_on macos: ">= :mojave"

  app "Dashcam Viewer.app"
end
