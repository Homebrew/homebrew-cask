cask "font-iosevka-curly-slab" do
  version "32.0.0"
  sha256 "ba8b528687afde138d6a68e638d906645c57027cc5fd83bc5ae684d917be8327"

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
