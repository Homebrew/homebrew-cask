cask "font-iosevka-ss12" do
  version "34.9.0"
  sha256 "af5f483d815e5fdc675c12d338c0b65635e7fce0f1e1785f331438f67c9f9c7c"

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
