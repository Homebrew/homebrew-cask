cask "font-iosevka-ss08" do
  version "33.3.5"
  sha256 "789f26a2a62f161dc0b818623159a864df862785cf944c6279b5d308913e7074"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS08-#{version}.zip"
  name "Iosevka SS08"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS08.ttc"

  # No zap stanza required
end
