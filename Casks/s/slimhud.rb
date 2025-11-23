cask "slimhud" do
  version "1.5.3"
  sha256 "41c8101d5c29c0e89fd9a0fc1501f42711e3f45f09fdade1b755e1541aa761e5"

  url "https://github.com/AlexPerathoner/SlimHUD/releases/download/v#{version}/SlimHUD.zip"
  name "SlimHUD"
  desc "Replacement for the volume, brightness and keyboard backlight HUDs"
  homepage "https://github.com/AlexPerathoner/SlimHUD/"

  livecheck do
    url "https://alexperathoner.github.io/SlimHUD/Support/appcast.xml"
    strategy :sparkle
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  auto_updates true

  app "SlimHUD.app"

  zap trash: "~/Library/Preferences/com.alexpera.SlimHUD.plist"
end
