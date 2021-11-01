cask "my-image-garden" do
  version "3.6.5"
  sha256 "d40260bb5786738a40560b1a6834c4b284c7c9986ae7ce2d96c90e820d7f8f73"

  url "https://gdlp01.c-wss.com/gds/2/0200006062/02/mmig-mac-#{version.dots_to_underscores}-ea11.dmg",
      verified: "c-wss.com/"
  name "Canon My Image Garden"
  homepage "https://support-asia.canon-asia.com/?personal"

  pkg "My Image Garden V#{version.no_dots}.pkg"

  uninstall pkgutil: "jp.co.canon.MyImageGarden",
            quit:    "jp.co.canon.MyImageGarden"
end
