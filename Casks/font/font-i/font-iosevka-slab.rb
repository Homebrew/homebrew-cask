cask "font-iosevka-slab" do
  version "34.3.0"
  sha256 "a61178d261d6e943d1288625c35b8910d2abc10468c6a45c5c512394d0a5bba7"

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
