cask "font-iosevka-slab" do
  version "32.2.1"
  sha256 "8d06ad8bcca54a7a63e15c9197c859cd2f57438b0c3c44c28d6f643ca1f16483"

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
