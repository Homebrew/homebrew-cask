cask "font-iosevka-ss13" do
  version "32.4.0"
  sha256 "25b0a2d8b91cc8b3454c96356c21e0c92ab25f0382d98a8e7bf00cd6e4a59505"

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
