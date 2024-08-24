cask "font-iosevka-ss14" do
  version "31.4.0"
  sha256 "caef07eb13a3fc214e032d00207ab8d20ae85ce1ef0833cf83e4fe217e779bf5"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS14-#{version}.zip"
  name "Iosevka SS14"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS14.ttc"

  # No zap stanza required
end
