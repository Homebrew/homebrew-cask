cask "font-iosevka-ss05" do
  version "34.6.0"
  sha256 "5b30ea13e8a6db1094f24440ffc1f2ec65c46471480f1009377d3c748c3b4674"

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
