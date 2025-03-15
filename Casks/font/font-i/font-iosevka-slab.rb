cask "font-iosevka-slab" do
  version "33.1.0"
  sha256 "b8a7d7de00d1e62056006a6fc82428c3f2c8e45e41ec3420484a585b51ead90d"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSlab-#{version}.zip"
  name "Iosevka Slab"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSlab.ttc"

  # No zap stanza required
end
