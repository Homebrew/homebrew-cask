cask "font-iosevka-ss06" do
  version "34.8.1"
  sha256 "dbb273fa1471f454158a96a7b58bb34d3b59732fc948d6bc9ef17184d2e1b666"

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
