cask "font-iosevka-ss13" do
  version "34.9.1"
  sha256 "0e657a8879c093de1832595a3188f689b9c00fa13ee43f308ec4cd8be568c52c"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS13-#{version}.zip"
  name "Iosevka SS13"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS13.ttc"

  zap :not_required
end
