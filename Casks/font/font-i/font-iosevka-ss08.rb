cask "font-iosevka-ss08" do
  version "31.9.1"
  sha256 "31647d2bde55e17a1f33eacfbd7db359d3c485c5824f6ff75b95299530dffdd8"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS08-#{version}.zip"
  name "Iosevka SS08"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS08.ttc"

  # No zap stanza required
end
