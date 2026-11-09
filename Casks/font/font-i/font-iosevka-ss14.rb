cask "font-iosevka-ss14" do
  version "34.9.1"
  sha256 "81bccc9655df1d76517dd80b0488e51384dbbafc3f974e985c601abc9090a5d7"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS14-#{version}.zip"
  name "Iosevka SS14"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS14.ttc"

  zap :not_required
end
