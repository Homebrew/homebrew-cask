cask "font-iosevka-ss10" do
  version "33.3.6"
  sha256 "8781f0d6323d3d066667852bdd24c9beb70811e23cac2db530ae97693507565a"

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
