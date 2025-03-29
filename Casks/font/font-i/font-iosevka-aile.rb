cask "font-iosevka-aile" do
  version "33.2.0"
  sha256 "63c7f77b777e497b86dd68dd85fb7a3ae67eda9af85c24de0ee05ae8e48f7cc5"

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
