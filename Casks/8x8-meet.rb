cask "8x8-meet" do
  version :latest
  sha256 :no_check

  # vod-updates.8x8.com/ was verified as official when first introduced to the cask
  url "https://vod-updates.8x8.com/ga/meet-dmg-latest.dmg"
  name "8x8 Meet"
  homepage "https://8x8.vc/"

  app "8x8 Meet.app"
end
