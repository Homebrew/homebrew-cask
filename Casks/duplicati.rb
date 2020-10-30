cask "duplicati" do
  version "2.0.5.111,2020-09-26"
  sha256 "98a62f67337e0db74c0ce86082d98a0670d269e367090bc2cc3f9ad5e7e8a46b"

  # github.com/duplicati/duplicati/ was verified as official when first introduced to the cask
  url "https://github.com/duplicati/duplicati/releases/download/v#{version.before_comma}-#{version.before_comma}_canary_#{version.after_comma}/duplicati-#{version.before_comma}_canary_#{version.after_comma}.dmg"
  appcast "https://github.com/duplicati/duplicati/releases.atom"
  name "Duplicati"
  desc "Store securely encrypted backups in the cloud!"
  homepage "https://www.duplicati.com/"

  depends_on formula: "mono"

  app "Duplicati.app"

  zap trash: [
    "~/Library/Application Support/Duplicati",
    "~/.config/Duplicati",
  ]
end
