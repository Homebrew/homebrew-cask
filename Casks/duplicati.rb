cask "duplicati" do
  version "2.0.5.1,2020-01-18"
  sha256 "38509531cc9a007b98527af604f9a5faeb41b9221a79c7bd36e8846a32f1fda0"

  # github.com/duplicati/duplicati/ was verified as official when first introduced to the cask
  url "https://github.com/duplicati/duplicati/releases/download/v#{version.before_comma}-#{version.before_comma}_beta_#{version.after_comma}/duplicati-#{version.before_comma}_beta_#{version.after_comma}.dmg"
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
