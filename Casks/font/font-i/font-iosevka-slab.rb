cask "font-iosevka-slab" do
  version "33.3.2"
  sha256 "39e366f5d8146220d33c01f97d46d22f5259ea4f67f433535d53f2254a39fcfb"

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
