cask "font-iosevka-ss14" do
  version "33.3.1"
  sha256 "c1efff70fe36103580ca16f8a93afc943fd6d4a82507c46a5edf183165125c0c"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS14-#{version}.zip"
  name "Iosevka SS14"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS14.ttc"

  # No zap stanza required
end
