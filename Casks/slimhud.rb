cask "slimhud" do
  version "1.4.2"
  sha256 "23867d84760630debe22728ba6d088580c40e41c182a9e576ff7c615a9b239de"

  url "https://github.com/AlexPerathoner/SlimHUD/releases/download/v#{version}/SlimHUD.zip"
  name "SlimHUD"
  desc "Replacement for the volume, brightness and keyboard backlight HUDs"
  homepage "https://github.com/AlexPerathoner/SlimHUD/"

  depends_on macos: ">= :mojave"

  app "SlimHUD.app"

  zap trash: "~/Library/Preferences/AlexP.SlimHUD.plist"
end
