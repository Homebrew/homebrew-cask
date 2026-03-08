cask "font-iosevka-ss16" do
  version "34.2.1"
  sha256 "291b1d1b1e627ed9a8d872dbb58f4bcdeabb49dd2af6bb143f601337cf1bee9f"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS16-#{version}.zip"
  name "Iosevka SS16"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS16.ttc"

  # No zap stanza required
end
