cask "font-iosevka-ss03" do
  version "34.0.0"
  sha256 "e6d081422e6f6406793c5b8120e250e86038907ead448974ed60573833127ce8"

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
