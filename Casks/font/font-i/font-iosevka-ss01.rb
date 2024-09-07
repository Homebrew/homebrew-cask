cask "font-iosevka-ss01" do
  version "31.6.0"
  sha256 "8574f92e8b9393680250b18bc1b9a874060f2bb7750b4a97e05a9691e52388b2"

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
