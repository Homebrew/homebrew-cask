cask "font-iosevka-aile" do
  version "34.6.1"
  sha256 "d85fac260053a90e3af660939ad3dcd5462418d6c8e853fddd25150fa587a5af"

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
