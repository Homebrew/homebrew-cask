cask "font-iosevka-ss04" do
  version "33.3.1"
  sha256 "91dad61fa3583ad5350a7a4368b1b0956eaa08c017aa5974273f8770fd67fc63"

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
