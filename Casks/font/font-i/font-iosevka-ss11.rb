cask "font-iosevka-ss11" do
  version "33.2.8"
  sha256 "233a3a9c8b7d4cfe51554322972a1127ba94813ce09e1a91564f3a73f1cdfff6"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS11-#{version}.zip"
  name "Iosevka SS11"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS11.ttc"

  # No zap stanza required
end
