cask "dashcam-viewer" do
  version "3.8.0"
  sha256 "ac0883634fc496bc60ae96ab72645f0bc663da4d47f720cee546c4aeaaeb51d4"

  url "https://filedn.com/l2s8TAtm4VASBX72ds0zYD8/dcv/Dashcam_Viewer_v#{version}.dmg",
      verified: "filedn.com/l2s8TAtm4VASBX72ds0zYD8/dcv/"
  name "Dashcam Viewer"
  name "Dashcam Viewer by Earthshine Software"
  desc "View videos, GPS data, and G-force data recorded by dashcams and action cams"
  homepage "https://dashcamviewer.com/"

  livecheck do
    url "https://dashcamviewer.com/free-trial/"
    regex(%r{href=.*?/Dashcam_Viewer_v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :mojave"

  app "Dashcam Viewer.app"
end
