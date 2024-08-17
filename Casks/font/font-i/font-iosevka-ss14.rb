cask "font-iosevka-ss14" do
  version "31.3.0"
  sha256 "a240956cd7350cc0e0f0a38733f785630582f48ad73324474b02f00c29fbee75"

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
