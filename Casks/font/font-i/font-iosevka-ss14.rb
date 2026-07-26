cask "font-iosevka-ss14" do
  version "34.8.0"
  sha256 "5e3d523d808acc48426fb1b63b43825b57fadcc7bdde532c8985e0fe7bc70be8"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS14-#{version}.zip"
  name "Iosevka SS14"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS14.ttc"

  # No zap stanza required
end
