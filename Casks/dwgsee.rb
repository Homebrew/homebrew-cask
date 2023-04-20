cask "dwgsee" do
  version "1.0"
  sha256 :no_check

  url "https://www.dwgsee.com/download/dwgseemac.dmg"
  name "DWGSee"
  desc "DWG viewer and editor"
  homepage "https://www.dwgsee.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "DWGSee.app"
end
