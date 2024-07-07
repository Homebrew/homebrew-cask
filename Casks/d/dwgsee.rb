cask "dwgsee" do
  version "1.0"
  sha256 :no_check

  url "https://www.dwgsee.com/download/dwgseemac.dmg"
  name "DWGSee"
  desc "DWG viewer and editor"
  homepage "https://www.dwgsee.com/"

  disable! date: "2024-07-05", because: :no_longer_available

  app "DWGSee.app"
end
