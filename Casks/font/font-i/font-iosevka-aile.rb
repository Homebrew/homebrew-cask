cask "font-iosevka-aile" do
  version "33.1.0"
  sha256 "9e379dfb2765a30aa1e2569037bf8d169879cc33761165a180f8b97a173ecad8"

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
