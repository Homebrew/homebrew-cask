cask "dashcam-viewer" do
  version "3.8.5"
  sha256 "da832ea9534acc01a1a83e9bd5cbff0caa8239a8af62a81b0f83454dd646782f"

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
