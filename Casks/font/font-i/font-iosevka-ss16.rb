cask "font-iosevka-ss16" do
  version "34.0.0"
  sha256 "05f7f1d5efe56ff7f1fcff8c21c2b84da4be44fe9b63d4abbc2e3950b242c585"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS16-#{version}.zip"
  name "Iosevka SS16"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS16.ttc"

  # No zap stanza required
end
