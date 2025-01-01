cask "font-iosevka-ss13" do
  version "32.3.1"
  sha256 "d8b8ad089e885cd8c58dccd6b6131052f8f6cad2b3361c31725217d8454a482b"

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
