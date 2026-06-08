cask "font-iosevka-slab" do
  version "34.6.1"
  sha256 "bce5746934b51dcb27bdd790c81482559f827a36d0af36cce062a7e2cd04a730"

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
