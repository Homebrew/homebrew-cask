cask "font-iosevka-aile" do
  version "33.3.3"
  sha256 "f2d69abcac9d06ca375df5d81947bc7ae0671b2f45e5b7495e33edea60e79e66"

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
