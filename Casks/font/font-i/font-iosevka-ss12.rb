cask "font-iosevka-ss12" do
  version "32.4.0"
  sha256 "7f85534f7054c4bb584fb759cc5dc91cfc260914b9dcdec1129d6b4a131e8ae3"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS12-#{version}.zip"
  name "Iosevka SS12"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS12.ttc"

  # No zap stanza required
end
