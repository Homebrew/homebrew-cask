cask "font-iosevka-ss11" do
  version "33.3.0"
  sha256 "c9ade5f7a16965f1f68a0d0ae7f61e3b63a73371501edeb45022319547601c96"

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
