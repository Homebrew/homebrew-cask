cask "font-iosevka-etoile" do
  version "32.5.0"
  sha256 "639fa6d70a247bf913aa5973480c0e7589d53c2b3979f140efc72adeeb4106d8"

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
