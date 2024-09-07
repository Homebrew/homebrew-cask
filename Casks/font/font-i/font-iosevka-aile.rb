cask "font-iosevka-aile" do
  version "31.6.0"
  sha256 "8a4bd98134de0397ad89f5561dc24daedf4415322ada0b7472e1b361591a512d"

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
