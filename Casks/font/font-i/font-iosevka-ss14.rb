cask "font-iosevka-ss14" do
  version "33.0.0"
  sha256 "178246a409a28dd704816836ddfdebbb8800437021f70e22e09224f950c5372e"

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
