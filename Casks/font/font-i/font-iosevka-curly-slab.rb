cask "font-iosevka-curly-slab" do
  version "33.1.0"
  sha256 "2562d53e5b347aef153c8129d5535c48a6ae8490ba84e612f6ff87eee2b81fa5"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaCurlySlab-#{version}.zip"
  name "Iosevka Curly Slab"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaCurlySlab.ttc"

  # No zap stanza required
end
