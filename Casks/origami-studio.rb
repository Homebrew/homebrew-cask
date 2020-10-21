cask "origami-studio" do
  version "252227598"
  sha256 "716b7d0d0596464bb5dd100e7d7bb687da0b38e4809d13548d32c229a765d82c"

  # fb.me/ was verified as official when first introduced to the cask
  url "https://fb.me/getorigamistudio"
  appcast "https://www.facebook.com/mobile_builds/appcast.xml?app_id=892075810923571"
  name "Origami Studio"
  homepage "https://origami.design/"

  depends_on macos: ">= :sierra"

  app "Origami Studio.app"
end
