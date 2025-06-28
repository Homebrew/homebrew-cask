cask "font-iosevka-ss17" do
  version "33.2.6"
  sha256 "2d0623914952570777377833b8aef162d0c1e7d7486e088ea1789e5575ee4a17"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS17-#{version}.zip"
  name "Iosevka SS17"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS17.ttc"

  # No zap stanza required
end
