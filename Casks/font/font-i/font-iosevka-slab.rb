cask "font-iosevka-slab" do
  version "33.2.5"
  sha256 "6d59fe5213f2eb4ac0ecd3f9cb87e00d6c09f5bfcb2e2b375ca6ccafec98c96f"

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
