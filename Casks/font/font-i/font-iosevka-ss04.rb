cask "font-iosevka-ss04" do
  version "33.3.4"
  sha256 "209a8d2c86c01988b252384efc28cf90d3550691d820ce7cd102facf2042fa03"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS04-#{version}.zip"
  name "Iosevka SS04"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS04.ttc"

  # No zap stanza required
end
