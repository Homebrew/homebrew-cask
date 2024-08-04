cask "font-iosevka-ss16" do
  version "31.1.0"
  sha256 "2c32fcd627a7b9f891061a4241cf50d8af581a994438d1271c643ab8b4076276"

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
