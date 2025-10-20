cask "font-iosevka-etoile" do
  version "33.3.3"
  sha256 "e60484f590c61ec102367c809c7bc2fcf2b4202f02d15f2846b7d646b32ba52f"

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
