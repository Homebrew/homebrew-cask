cask "my-image-garden" do
  version "3.6.3"
  sha256 "9942141cc5a46bec2e29ffe87cc679ca5de51f008c4182b48f666b61ad3285bb"

  # c-wss.com/ was verified as official when first introduced to the cask
  url "https://gdlp01.c-wss.com/gds/3/0200004873/08/mmig-mac-#{version.dots_to_underscores}-ea11.dmg"
  name "Canon My Image Garden"
  homepage "https://support-asia.canon-asia.com/?personal"

  pkg "My Image Garden V#{version.no_dots}.pkg"

  uninstall pkgutil: "jp.co.canon.MyImageGarden",
            quit:    "jp.co.canon.MyImageGarden"
end
