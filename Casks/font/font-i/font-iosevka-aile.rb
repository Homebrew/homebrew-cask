cask "font-iosevka-aile" do
  version "34.3.0"
  sha256 "e3973b94a86d6c1ae8596238827d2f450cc796939590e441c5d72a98081506c6"

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
