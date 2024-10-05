cask "font-iosevka-slab" do
  version "31.8.0"
  sha256 "dcb3f5766cb5e71017417e35541172dc260a9ece9e533f7e8d234ee16c708b2d"

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
