cask "font-iosevka-ss04" do
  version "33.3.0"
  sha256 "99a6991a5e75771aeb64c1e339fc47580d4a79e0a1b117639f5d157c16f08392"

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
