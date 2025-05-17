cask "font-iosevka-ss13" do
  version "33.2.3"
  sha256 "699f1e5e6dee17e68f9a8c447c41f1d3f79e3ae6c1f3fedb82a8dfb326fd4550"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS13-#{version}.zip"
  name "Iosevka SS13"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS13.ttc"

  # No zap stanza required
end
