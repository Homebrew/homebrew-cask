cask "font-iosevka-ss01" do
  version "34.2.1"
  sha256 "3994c6dde854384960120c0794f30ed8ba08364ad06ee973cb8d43b4ed1e69d9"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS01-#{version}.zip"
  name "Iosevka SS01"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS01.ttc"

  # No zap stanza required
end
