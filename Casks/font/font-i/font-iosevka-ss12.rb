cask "font-iosevka-ss12" do
  version "34.9.1"
  sha256 "03fba5ac7a0d8d8ce599cfba9c0217c31174a38d29627db5415aa2d7d5478121"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS12-#{version}.zip"
  name "Iosevka SS12"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS12.ttc"

  zap :not_required
end
