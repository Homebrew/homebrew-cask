cask "font-iosevka-ss03" do
  version "34.9.1"
  sha256 "abca5b0fcf46d5811b1d374a6e5c2172fee6bcaaf08b6f26a19d93946b90cf7f"

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
