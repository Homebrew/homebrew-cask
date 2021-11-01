cask "betterdummy" do
  version "1.0.7,416"
  sha256 "f21bbe804f42c31eb7f6dd82ffd3ea855b9a4847b4afb5ba717fdba55f45b7c1"

  url "https://github.com/waydabber/BetterDummy/releases/download/v#{version.before_comma}/BetterDummy-v#{version.before_comma}.zip"
  name "betterdummy"
  desc "Dummy Display for Apple Silicon Macs to achieve custom resolutions"
  homepage "https://github.com/waydabber/BetterDummy"

  livecheck do
    url "https://github.com/waydabber/BetterDummy/raw/main/docs/appcast.xml"
    strategy :sparkle
  end

  app "BetterDummy.app"
end
