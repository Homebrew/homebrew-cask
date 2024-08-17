cask "font-iosevka-curly-slab" do
  version "31.3.0"
  sha256 "3782ac36c70c6492051498f779c9e2bbadc070d9f3b9ee32a1f4fedd31f043a4"

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
