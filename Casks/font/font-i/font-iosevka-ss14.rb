cask "font-iosevka-ss14" do
  version "34.0.0"
  sha256 "96b777a152fe5bc50ebbd64e0ce0cc0f3d2b49bedc70cc7f8c004ca190a1e6f0"

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
