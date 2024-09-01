cask "font-iosevka" do
  version "31.5.0"
  sha256 "ec50ff68360dbd35df8ac36ef5ff7fb98ab8713c7fedcce3c5b0d30d3fe1ee10"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-Iosevka-#{version}.zip"
  name "Iosevka"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "Iosevka.ttc"

  # No zap stanza required
end
