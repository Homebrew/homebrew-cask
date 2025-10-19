cask "font-iosevka-slab" do
  version "33.3.3"
  sha256 "a34b3ea27050ebf4573bd1781d06a038749bd205f96d7a786b5f573a23cb8755"

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
