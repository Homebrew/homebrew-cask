cask "font-iosevka-ss06" do
  version "34.0.0"
  sha256 "629481dbb539d0eda4921b4d389daf5a1f183831c097051c0b26e1ecbe090efc"

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
