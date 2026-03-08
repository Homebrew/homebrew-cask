cask "font-iosevka" do
  version "34.2.1"
  sha256 "17a510eecefe44374ff41bc564440a80da81ab1182808ef28e1c6cc105593654"

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
