cask "font-iosevka-slab" do
  version "33.2.8"
  sha256 "b73837fe44ea520d3b1ffc413cf70f1188c52d6b99978cf0090a085cfc91ed6c"

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
