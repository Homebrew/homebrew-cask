cask "font-iosevka-ss03" do
  version "34.9.0"
  sha256 "6283b3e6ee80372e46d066b1f9424328720fc4ef7e6e1f56a25072bc99256b33"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS03-#{version}.zip"
  name "Iosevka SS03"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS03.ttc"

  # No zap stanza required
end
