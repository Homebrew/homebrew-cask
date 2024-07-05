cask "appstore-quickview" do
  version "1.1.1"
  sha256 :no_check

  url "https://www.marcmoini.com/App...StoreQuickview.zip"
  name "App...Store Quickview"
  desc "Quickview for the App Store"
  homepage "https://www.marcmoini.com/aq_en.html"

  disable! date: "2024-07-05", because: :unmaintained

  app "App...Store Quickview.app"
end
