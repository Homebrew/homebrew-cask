cask "dashcam-viewer" do
  version "3.6.3"
  sha256 "3a4c0df1d1e19000fb74d1afc61f692995420d6984e64f8f0c1a58263d3b920d"

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
