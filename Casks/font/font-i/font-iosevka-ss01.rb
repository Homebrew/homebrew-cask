cask "font-iosevka-ss01" do
  version "31.9.1"
  sha256 "07c89a857c08f8620e33f3e76e51b13358c0474561f05be63dae3b1db46a0fe2"

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
