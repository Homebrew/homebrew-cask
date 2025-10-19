cask "font-iosevka-ss03" do
  version "33.3.3"
  sha256 "68d1a9e82b0333ce01ae66739896473e746f1c3c4a8b1398c8b5cb5b84f1b8d1"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS03-#{version}.zip"
  name "Iosevka SS03"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS03.ttc"

  # No zap stanza required
end
