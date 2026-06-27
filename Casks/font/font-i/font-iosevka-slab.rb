cask "font-iosevka-slab" do
  version "34.7.0"
  sha256 "b27df29cd04f1800f135bb1ae8d0e45c08dbd6548d28c403b945e4747c9fe2f9"

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
