cask "font-iosevka-etoile" do
  version "34.4.0"
  sha256 "03f7a3e4794185d2452040bd29f007a427c331212d5690bda02d8506c13368ad"

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
