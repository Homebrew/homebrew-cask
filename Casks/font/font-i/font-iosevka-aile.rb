cask "font-iosevka-aile" do
  version "32.2.0"
  sha256 "a0a6c1471661322fe927dc01d8f69a87057ea568c0bf8443ed292f7cff02f6f0"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaAile-#{version}.zip"
  name "Iosevka Aile"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaAile.ttc"

  # No zap stanza required
end
