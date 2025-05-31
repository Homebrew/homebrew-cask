cask "font-iosevka-ss04" do
  version "33.2.4"
  sha256 "52729f2f2c2a4b7970f93b6024402deadda226ee9eb05bbc8ee40c80d8502c66"

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
