cask "font-iosevka-ss05" do
  version "33.1.0"
  sha256 "133d5e1807d23c985cc49009c3c0630385c3d9a561e1deea66d2d24ba12a6182"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS05-#{version}.zip"
  name "Iosevka SS05"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS05.ttc"

  # No zap stanza required
end
