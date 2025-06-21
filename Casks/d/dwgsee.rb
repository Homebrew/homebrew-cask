cask "dwgsee" do
  version "1.0"
  sha256 :no_check

  url "https://www.dwgsee.com/download/dwgseemac.dmg"
  name "DWGSee"
  desc "DWG viewer and editor"
  homepage "https://www.dwgsee.com/"

  no_autobump! because: :requires_manual_review

  disable! date: "2024-07-05", because: :no_longer_available

  app "DWGSee.app"
end
