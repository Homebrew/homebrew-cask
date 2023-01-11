cask "slimhud" do
  version "1.4.1"
  sha256 "a9650cc1cfaed88804ca8814b766ff4e66033218b84c1c3e5e3e69ef070d2fd8"

  url "https://github.com/AlexPerathoner/SlimHUD/releases/download/v#{version}/SlimHUD.zip"
  name "SlimHUD"
  desc "Replacement for the volume, brightness and keyboard backlight HUDs"
  homepage "https://github.com/AlexPerathoner/SlimHUD/"

  depends_on macos: ">= :mojave"

  app "SlimHUD.app"

  zap trash: "~/Library/Preferences/AlexP.SlimHUD.plist"
end
