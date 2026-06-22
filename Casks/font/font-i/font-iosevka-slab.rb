cask "font-iosevka-slab" do
  version "34.6.3"
  sha256 "4016f146346992726e92efec6a7561505316eaf090c1730b2532f2c151bc59dd"

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
