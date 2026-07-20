cask "font-iosevka-ss06" do
  version "34.7.0"
  sha256 "96321951ae324e1697c26848623a787a235061546adc0c7bc69392f78411a55b"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS06-#{version}.zip"
  name "Iosevka SS06"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS06.ttc"

  # No zap stanza required
end
