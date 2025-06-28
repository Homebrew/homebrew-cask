cask "font-iosevka-ss06" do
  version "33.2.6"
  sha256 "40577d6abadcda1fad044e22e95cdc49a62a20078ec956fe526259eb5d796114"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS06-#{version}.zip"
  name "Iosevka SS06"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS06.ttc"

  # No zap stanza required
end
