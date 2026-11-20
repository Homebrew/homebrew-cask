cask "font-iosevka-ss09" do
  version "34.9.1"
  sha256 "bd6735a30b0b76cd012efbfa59cb134772bcd49b1878de2ac74f11a70e212951"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS09-#{version}.zip"
  name "Iosevka SS09"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS09.ttc"

  zap :not_required
end
