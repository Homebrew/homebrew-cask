cask "font-iosevka-ss03" do
  version "33.1.0"
  sha256 "767025275b4f773f64060a81a6fb45c345407ca07017490c48ddb172b06d365d"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS03-#{version}.zip"
  name "Iosevka SS03"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS03.ttc"

  # No zap stanza required
end
