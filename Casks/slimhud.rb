cask "slimhud" do
  version "1.5.0"
  sha256 "901fd7ccd78dbe3fc68d41bb17c241a126552f6a0e2b0105ccdd8a984c73d007"

  url "https://github.com/AlexPerathoner/SlimHUD/releases/download/v#{version}/SlimHUD.zip"
  name "SlimHUD"
  desc "Replacement for the volume, brightness and keyboard backlight HUDs"
  homepage "https://github.com/AlexPerathoner/SlimHUD/"

  depends_on macos: ">= :high_sierra"

  app "SlimHUD.app"

  zap trash: "~/Library/Preferences/com.alexpera.SlimHUD.plist"
end
