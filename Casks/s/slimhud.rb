cask "slimhud" do
  version "1.5.2"
  sha256 "c811e08478f33c09dad290fc070a849159f6ddc57f003034f442b524bedca3c2"

  url "https://github.com/AlexPerathoner/SlimHUD/releases/download/v#{version}/SlimHUD.zip"
  name "SlimHUD"
  desc "Replacement for the volume, brightness and keyboard backlight HUDs"
  homepage "https://github.com/AlexPerathoner/SlimHUD/"

  depends_on macos: ">= :high_sierra"

  app "SlimHUD.app"

  zap trash: "~/Library/Preferences/com.alexpera.SlimHUD.plist"
end
