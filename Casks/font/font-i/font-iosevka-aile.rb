cask "font-iosevka-aile" do
  version "34.6.0"
  sha256 "f6641f41c9c986ddcedb7fe19499fd421184c2bf20e1bd3a7b149c70f662693c"

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
