cask "font-iosevka-etoile" do
  version "34.2.1"
  sha256 "96191a4515e525dd3978c9a3069f8999f90f4ec773ed877020ded3859849bdc1"

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
