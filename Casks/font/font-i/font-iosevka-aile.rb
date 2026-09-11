cask "font-iosevka-aile" do
  version "34.8.1"
  sha256 "6cd61ff3a2cc7f4142a1cd96d571820dff5c52ef58d7e0979afbaa2d88d859cb"

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
