cask "font-iosevka-ss18" do
  version "34.4.0"
  sha256 "77e35e36dac373bc24ffa532a73efcffae01124575876b2baeed659f6a705a0c"

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
