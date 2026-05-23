cask "font-iosevka-ss11" do
  version "34.6.0"
  sha256 "a6f3c8efb862710ba8e758de39b065bd9e3c4c3e530fcac93bfd34a998b34b23"

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
