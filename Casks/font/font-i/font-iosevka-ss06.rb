cask "font-iosevka-ss06" do
  version "34.9.2"
  sha256 "f0f57687d7a529b458b89073c61d2461277225e733920a12b2ce0efa7edd7aaa"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS06-#{version}.zip"
  name "Iosevka SS06"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS06.ttc"

  zap :not_required
end
