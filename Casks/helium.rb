cask "helium" do
  version "1.0"
  sha256 :no_check

  # download.clockworkmod.com/carbon/ was verified as official when first introduced to the cask
  url "https://download.clockworkmod.com/carbon/carbon-mac.zip"
  name "Helium"
  homepage "https://github.com/koush/support-wiki/wiki/Helium-Desktop-Installer-and-Android-App"

  app "Helium.app"

  uninstall quit: "com.koushikdutta.Helium"

  zap trash: "~/Library/Saved Application State/com.koushikdutta.Helium.savedState"
end
