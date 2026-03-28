cask "font-iosevka-ss18" do
  version "34.3.0"
  sha256 "4c81d1d0217306745d869db97fc2a570339dbd80b20a8c73264dfabe313c1777"

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
