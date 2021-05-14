cask "8x8-meet" do
  version "0.3.8.1"
  sha256 :no_check

  url "https://vod-updates.8x8.com/ga/meet-dmg-latest.dmg",
      verified: "vod-updates.8x8.com/"
  name "8x8 Meet"
  homepage "https://8x8.vc/"

  app "8x8 Meet.app"
end
