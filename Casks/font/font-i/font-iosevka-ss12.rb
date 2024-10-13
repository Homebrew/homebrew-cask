cask "font-iosevka-ss12" do
  version "31.9.0"
  sha256 "2d3c474f4680a431178a9a05f630476078c1c5b55d3cddeb1a255fd91e9fde6e"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS12-#{version}.zip"
  name "Iosevka SS12"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS12.ttc"

  # No zap stanza required
end
