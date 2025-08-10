cask "font-iosevka-curly-slab" do
  version "33.2.8"
  sha256 "3b349d2d61434cf708161af0d507834d0c47f8910bff9f996ccf483d4797c6e1"

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
