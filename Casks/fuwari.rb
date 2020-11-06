cask "fuwari" do
  version "0.5.1"
  sha256 "dd72adc918e9984548a20a513bd3d4319e63ee78ca688ee75546103a16d9f3c2"

  # github.com/kentya6/Fuwari/ was verified as official when first introduced to the cask
  url "https://github.com/kentya6/Fuwari/releases/download/v#{version}/Fuwari.zip"
  appcast "https://github.com/kentya6/Fuwari/releases.atom"
  name "Fuwari"
  desc "Floating screenshot like a sticky"
  homepage "https://fuwari-app.com/"

  app "Fuwari/Fuwari.app"

  uninstall quit:       "com.appknop.Fuwari"

  zap trash: [
    "~/Library/Application Support/com.appknop.Fuwari",
    "~/Library/Caches/com.appknop.Fuwari",
    "~/Library/Caches/com.crashlytics.data/com.appknop.Fuwari",
    "~/Library/Caches/io.fabric.sdk.mac.data/com.appknop.Fuwari",
    "~/Library/Preferences/com.appknop.Fuwari.plist",
  ]
end
