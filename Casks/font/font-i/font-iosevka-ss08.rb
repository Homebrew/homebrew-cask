cask "font-iosevka-ss08" do
  version "34.9.2"
  sha256 "12998ea11018b0498ba4abc6b29b80a0d1143d87ebd4c9ecaafd9e5663bc85ac"

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
