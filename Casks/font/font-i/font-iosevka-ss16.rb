cask "font-iosevka-ss16" do
  version "34.6.2"
  sha256 "64b49c27f935b79fa21f02c3cc3a26c2a86609cfe914e0ab80061c7e730dbf4c"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS16-#{version}.zip"
  name "Iosevka SS16"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS16.ttc"

  # No zap stanza required
end
