cask "font-iosevka-ss16" do
  version "32.1.0"
  sha256 "63888613f760f5348ec0187b9350d15fbc4865d723faabc9245d862149ced8e1"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS16-#{version}.zip"
  name "Iosevka SS16"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS16.ttc"

  # No zap stanza required
end
