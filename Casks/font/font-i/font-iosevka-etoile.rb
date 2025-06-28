cask "font-iosevka-etoile" do
  version "33.2.6"
  sha256 "6f1b353b54fa786cbc6f8b4242e897022990a55a2a4dc0af39c03566539092dc"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaEtoile-#{version}.zip"
  name "Iosevka Etoile"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaEtoile.ttc"

  # No zap stanza required
end
