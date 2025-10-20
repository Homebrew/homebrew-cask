cask "font-iosevka-ss13" do
  version "33.3.3"
  sha256 "963ed93cc5396fb498532f7f8c428aa07c48d3d62485dcd1cbbd478263777e15"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS13-#{version}.zip"
  name "Iosevka SS13"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS13.ttc"

  # No zap stanza required
end
