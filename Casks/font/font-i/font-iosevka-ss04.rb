cask "font-iosevka-ss04" do
  version "33.2.7"
  sha256 "0e0c3d564d7136d817f27662119eb09c0fba31d3eec0ec22eb3d2cb4b21833db"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS04-#{version}.zip"
  name "Iosevka SS04"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS04.ttc"

  # No zap stanza required
end
