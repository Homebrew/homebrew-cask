cask "font-iosevka-aile" do
  version "33.2.7"
  sha256 "a9e3b3c702bfd5870a180eeba746efbfa2955e83e67bc531f13dbc11993bc85b"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaAile-#{version}.zip"
  name "Iosevka Aile"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaAile.ttc"

  # No zap stanza required
end
