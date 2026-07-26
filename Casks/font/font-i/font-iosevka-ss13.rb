cask "font-iosevka-ss13" do
  version "34.8.0"
  sha256 "37b74ec4207c6bbdb3e94a6fbd64cf7af99a21f108f8eac0a7344122bcfdc00a"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS13-#{version}.zip"
  name "Iosevka SS13"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS13.ttc"

  # No zap stanza required
end
