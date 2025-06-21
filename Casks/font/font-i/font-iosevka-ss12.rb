cask "font-iosevka-ss12" do
  version "33.2.5"
  sha256 "ecd74821f08d9b25f634b1d952e79087459033123c7d3c6bcb3eb8a651b8d2c3"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS12-#{version}.zip"
  name "Iosevka SS12"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS12.ttc"

  # No zap stanza required
end
