cask "font-iosevka-slab" do
  version "33.2.2"
  sha256 "8f7e57b2ea44c0b4d69e995815d3b5560276e673dc626a097bf66bfcd6e84619"

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
