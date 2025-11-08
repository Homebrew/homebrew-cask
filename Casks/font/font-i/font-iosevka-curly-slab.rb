cask "font-iosevka-curly-slab" do
  version "33.3.4"
  sha256 "c8c072462a36cc69507fe65a65d74a86c7b543ca2a01e669ee79c2a7750994bb"

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
