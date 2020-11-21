cask "origami-studio" do
  version "257896285"
  sha256 "d1f141ec8377a5fc5f154f2960f436a71f439e7d15084dee3ed1b4ca49836852"

  # facebook.com/designtools/ was verified as official when first introduced to the cask
  url "https://facebook.com/designtools/origami/"
  # The appcast will fail CI due to its Cache-Control settings
  appcast "https://m.facebook.com/mobile_builds/appcast.xml?app_id=892075810923571&amp;amp%3Bflavor=production"
  name "Origami Studio"
  desc "Design, animate, and prototype design tool from Facebook"
  homepage "https://origami.design/"

  depends_on macos: ">= :sierra"

  app "Origami Studio.app"
end
