cask "chrysalis" do
  version "0.7.9"
  sha256 "00f3ed6f9d6b4f45529996d9d9a344dc76f30ff424b9660f74ef6002e05bf6c7"

  url "https://github.com/keyboardio/Chrysalis/releases/download/chrysalis-#{version}/Chrysalis-#{version}.dmg"
  appcast "https://github.com/keyboardio/Chrysalis/releases.atom"
  name "Chrysalis"
  desc "Graphical configurator for Kaleidoscope-powered keyboards"
  homepage "https://github.com/keyboardio/Chrysalis"

  app "Chrysalis.app"

  zap trash: [
    "~/Library/Application Support/chrysalis",
    "~/Library/Preferences/keyboardio.chrysalis.plist",
  ]
end
