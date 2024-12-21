cask "font-iosevka-ss11" do
  version "32.3.0"
  sha256 "3e8cf3125c98be203dd873cd4bf57074f16cfc9c3fb316926a6daefdf6cdc4c3"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS11-#{version}.zip"
  name "Iosevka SS11"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS11.ttc"

  # No zap stanza required
end
