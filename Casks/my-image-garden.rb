cask "my-image-garden" do
  version "3.6.6,04"
  sha256 "1b83b4695cd8d84c7807a06a5ba4c7e46cc5cfd73bdaf606a327e7341f573bb2"

  url "https://gdlp01.c-wss.com/gds/2/0200006062/#{version.csv.second}/mmig-mac-#{version.csv.first.dots_to_underscores}-ea11.dmg",
      verified: "c-wss.com/"
  name "Canon My Image Garden"
  desc "Photo editing and printing tool"
  homepage "https://support-asia.canon-asia.com/?personal"

  pkg "My Image Garden V#{version.csv.first.no_dots}.pkg"

  uninstall pkgutil: "jp.co.canon.MyImageGarden",
            quit:    "jp.co.canon.MyImageGarden"
end
