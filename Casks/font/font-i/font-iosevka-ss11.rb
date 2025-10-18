cask "font-iosevka-ss11" do
  version "33.3.2"
  sha256 "5b5110eb4341b2cff7802aad3cdca2c77765b8bb5c19ad72dc0f74a2c44557cf"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS11-#{version}.zip"
  name "Iosevka SS11"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS11.ttc"

  # No zap stanza required
end
