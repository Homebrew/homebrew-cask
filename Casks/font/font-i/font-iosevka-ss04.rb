cask "font-iosevka-ss04" do
  version "31.7.0"
  sha256 "d586c84c82d43d253464b53f9304427655cdec76a89814e24927906fef7a8044"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS04-#{version}.zip"
  name "Iosevka SS04"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS04.ttc"

  # No zap stanza required
end
