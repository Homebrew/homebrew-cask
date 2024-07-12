cask "helium" do
  version "1.0.0"
  sha256 "30abcdcb04e53f24948897acfd24899c7cdfca564b71b023224ae13f11365bbd"

  url "https://github.com/koush/CarbonResources/releases/download/v#{version}/carbon-mac.zip"
  name "Helium"
  homepage "https://github.com/koush/support-wiki/wiki/Helium-Desktop-Installer-and-Android-App"

  app "Helium.app"

  uninstall quit: "com.koushikdutta.Helium"

  zap trash: "~/Library/Saved Application State/com.koushikdutta.Helium.savedState"

  caveats do
    requires_rosetta
  end
end
