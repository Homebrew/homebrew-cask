cask "font-iosevka-slab" do
  version "31.6.0"
  sha256 "419f91717080eb9a8dec0270c0e575e74ad0ca32e23cb270d2985e411ec4b96e"

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
