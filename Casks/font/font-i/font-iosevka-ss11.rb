cask "font-iosevka-ss11" do
  version "34.9.2"
  sha256 "c3e7742054f65a846ff183aa3fbfea65ba02e8907331e29edd94b88e5c1cd326"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS11-#{version}.zip"
  name "Iosevka SS11"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS11.ttc"

  zap :not_required
end
