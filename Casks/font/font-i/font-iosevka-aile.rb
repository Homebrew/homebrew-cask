cask "font-iosevka-aile" do
  version "31.3.0"
  sha256 "8e198765ee3dc2172e1ec8c5cf029619210c2c43114f30f4a2aac3bf90c7c1f7"

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
