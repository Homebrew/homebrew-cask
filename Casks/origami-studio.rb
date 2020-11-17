cask "origami-studio" do
  version "257065621"
  sha256 "c929f34248af7aee7b7a7a3a6e2803adb72f0be174633d1097831be557a5e513"

  # facebook.com/designtools/ was verified as official when first introduced to the cask
  url "https://facebook.com/designtools/origami/"
  # The appcast will fail CI due to its Cache-Control settings
  appcast "https://www.facebook.com/mobile_builds/appcast.xml?app_id=892075810923571&amp;flavor=production"
  name "Origami Studio"
  desc "Design, animate, and prototype design tool from Facebook"
  homepage "https://origami.design/"

  depends_on macos: ">= :sierra"

  app "Origami Studio.app"
end
