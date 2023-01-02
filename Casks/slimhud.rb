cask "slimhud" do
  version "1.4.0"
  sha256 "82697387bca0c0e9c8baf03fdd05b274ca92d7b57d7ce333335692c64d028209"

  url "https://github.com/AlexPerathoner/SlimHUD/releases/download/v#{version}/SlimHUD.zip"
  name "SlimHUD"
  desc "Replacement for the volume, brightness and keyboard backlight HUDs"
  homepage "https://github.com/AlexPerathoner/SlimHUD/"

  depends_on macos: ">= :mojave"

  app "SlimHUD.app"

  zap trash: "~/Library/Preferences/AlexP.SlimHUD.plist"
end
