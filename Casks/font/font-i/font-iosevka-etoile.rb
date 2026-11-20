cask "font-iosevka-etoile" do
  version "34.9.1"
  sha256 "22f051322c2708122952856aaf6bf067fa27247faad09904aa6067ebd2d33785"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaEtoile-#{version}.zip"
  name "Iosevka Etoile"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaEtoile.ttc"

  zap :not_required
end
