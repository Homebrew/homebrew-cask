cask "font-iosevka-ss18" do
  version "31.7.1"
  sha256 "f12da2cd1822808c842509114e68d8bb2fa7c53d6e136d9cd629131c916f64a9"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS18-#{version}.zip"
  name "Iosevka SS18"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS18.ttc"

  # No zap stanza required
end
