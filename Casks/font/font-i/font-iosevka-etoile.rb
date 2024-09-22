cask "font-iosevka-etoile" do
  version "31.7.1"
  sha256 "645645a3abfd112916104db30b9ef792182280319274db045927eb10826c87eb"

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
