cask "font-iosevka-ss07" do
  version "31.1.0"
  sha256 "bf2a07e99c02a07f586c5d3033e161309f6b64a0219a367b1523177824c8ea15"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS07-#{version}.zip"
  name "Iosevka SS07"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS07.ttc"

  # No zap stanza required
end
