cask "font-iosevka-slab" do
  version "34.0.0"
  sha256 "cf20593cdbe4b3a8f2882f682d7a13b5ab150b1410feed17cb2237a7bee6b726"

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
