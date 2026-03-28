cask "font-iosevka-ss06" do
  version "34.3.0"
  sha256 "58ab8693af08f154cf62a852b6017bbf33105a141ac8e17f308c1908fc969390"

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
