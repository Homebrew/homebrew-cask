cask "dashcam-viewer" do
  version "3.6.4"
  sha256 "6e7a452882d5ffe89663119d37ec29a22b6ae29391a2b04d884372cb037a6602"

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
