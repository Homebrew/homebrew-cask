cask "font-iosevka-ss08" do
  version "34.9.1"
  sha256 "4760503a55b40cdf1dbf2b76906b4ad6f7e2888b2de2a21f3076abda380d19f6"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS08-#{version}.zip"
  name "Iosevka SS08"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS08.ttc"

  zap :not_required
end
