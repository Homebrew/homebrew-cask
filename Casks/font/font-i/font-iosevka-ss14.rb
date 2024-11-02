cask "font-iosevka-ss14" do
  version "32.0.0"
  sha256 "c52c775aabcb33d3dd876aaa12cdeaa1d35bda29b1aa6883cbf2d253ab2fac22"

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
