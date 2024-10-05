cask "font-iosevka-aile" do
  version "31.8.0"
  sha256 "a0b5e4b10337080a14131acaef950c81ffd6927d1ea46875d4df33751e6e92f3"

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
