cask "slimhud" do
  version "1.3.7"
  sha256 "b2de218dc65db11eeab6569dc66d6d7e0a83a1572010059459192e98abd6f0c8"

  url "https://github.com/AlexPerathoner/SlimHUD/releases/download/v#{version}/SlimHUD.zip"
  appcast "https://github.com/AlexPerathoner/SlimHUD/releases.atom"
  name "SlimHUD"
  desc "Replacement for the volume, brightness and keyboard backlight HUDs"
  homepage "https://github.com/AlexPerathoner/SlimHUD/"

  depends_on macos: ">= :mojave"

  app "SlimHUD.app"

  zap trash: "~/Library/Preferences/AlexP.SlimHUD.plist"
end
