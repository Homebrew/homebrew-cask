cask "font-iosevka-ss13" do
  version "34.7.0"
  sha256 "e43d87fea0339b9196b872edb7650ff36c1e49dfdb5490423c2e25f57271d06c"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS13-#{version}.zip"
  name "Iosevka SS13"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS13.ttc"

  # No zap stanza required
end
