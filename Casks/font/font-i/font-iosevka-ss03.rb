cask "font-iosevka-ss03" do
  version "34.8.1"
  sha256 "d9701bd8eb17eccca4ca9e1189b8ee8569a7ffdf0b18bd79af1f77c59ca7803b"

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
