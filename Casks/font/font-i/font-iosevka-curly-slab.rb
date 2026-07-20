cask "font-iosevka-curly-slab" do
  version "34.7.0"
  sha256 "afe3262e90e754f3947be785667783d6f89875a739c02145b538c4507c05f78d"

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
