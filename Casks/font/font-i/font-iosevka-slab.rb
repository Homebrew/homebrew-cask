cask "font-iosevka-slab" do
  version "33.0.1"
  sha256 "9e71829277e48f23d31280b27dee7e83050ce1ab9097c02541d4b42c091bb64f"

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
