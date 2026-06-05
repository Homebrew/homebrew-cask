cask "font-iosevka-ss04" do
  version "34.6.1"
  sha256 "746357a38e99421b8f6bcd44f98b4748af893e002702262989380306bc4f8f50"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS04-#{version}.zip"
  name "Iosevka SS04"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS04.ttc"

  # No zap stanza required
end
