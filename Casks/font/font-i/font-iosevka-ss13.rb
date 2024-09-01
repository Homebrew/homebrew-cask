cask "font-iosevka-ss13" do
  version "31.5.0"
  sha256 "5fbb0ca3b4f1a21a1d928048a9d4ae1cbe08763e8960cc50d4e11e3fe5a01aa8"

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
