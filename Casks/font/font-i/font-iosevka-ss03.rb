cask "font-iosevka-ss03" do
  version "34.9.2"
  sha256 "e5e5b2f7ed165cf4653f41f9a36cbf64f7c394a534f0f897eb894212d7ed146a"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS03-#{version}.zip"
  name "Iosevka SS03"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS03.ttc"

  zap :not_required
end
