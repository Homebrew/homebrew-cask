cask "font-iosevka-ss11" do
  version "32.0.1"
  sha256 "5244a97fc24343fd6058ef76e18caf986901c53afd144b2d167cf0af2242f821"

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
