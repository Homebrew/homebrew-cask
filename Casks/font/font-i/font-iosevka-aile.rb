cask "font-iosevka-aile" do
  version "34.9.0"
  sha256 "cc903fe2e67470cc96b11085a50ee4a8508d9228305c6fe84dac45e2bb56da4b"

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
