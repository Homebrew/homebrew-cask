cask "font-iosevka-ss06" do
  version "31.1.0"
  sha256 "71f3133702c86e85c914bd73f1ddbc45a291b00f43d324c823ec9340eb4efda3"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS06-#{version}.zip"
  name "Iosevka SS06"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS06.ttc"

  # No zap stanza required
end
