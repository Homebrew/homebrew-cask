cask "font-iosevka-ss06" do
  version "34.6.0"
  sha256 "62b435c828e8bcc94056e2135b6a3a90b09b0e381ba0f2d4f2c866ba56c5c5e5"

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
