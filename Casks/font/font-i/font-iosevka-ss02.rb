cask "font-iosevka-ss02" do
  version "34.9.2"
  sha256 "2e74024d582d598b3cab33ecb2063db8db1b35b9b95400d5990e0d56f451e2dc"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS02-#{version}.zip"
  name "Iosevka SS02"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS02.ttc"

  zap :not_required
end
