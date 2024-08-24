cask "font-iosevka-ss16" do
  version "31.4.0"
  sha256 "bbd3d32d0008b81f9175c8d4715993e190945f0ef5d65141c6d3c84e7f4dd4c6"

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
