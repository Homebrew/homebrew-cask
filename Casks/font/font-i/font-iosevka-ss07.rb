cask "font-iosevka-ss07" do
  version "31.3.0"
  sha256 "06c7047915098a9497ccfb96691f7353b05348ac09deb2461def69890f39e551"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS07-#{version}.zip"
  name "Iosevka SS07"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS07.ttc"

  # No zap stanza required
end
