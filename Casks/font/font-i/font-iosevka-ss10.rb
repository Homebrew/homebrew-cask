cask "font-iosevka-ss10" do
  version "34.6.1"
  sha256 "a5c9a319da80fc8acce80138594958f9f647eb4654b3fea5a1368b9414c8e1c7"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS10-#{version}.zip"
  name "Iosevka SS10"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS10.ttc"

  # No zap stanza required
end
