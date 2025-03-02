cask "font-iosevka-ss06" do
  version "33.0.1"
  sha256 "453b4bb4fd63b6fa5d0c1b4c78dbef62662036a668d01b35ce9b1a4e233dc4e1"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS06-#{version}.zip"
  name "Iosevka SS06"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS06.ttc"

  # No zap stanza required
end
