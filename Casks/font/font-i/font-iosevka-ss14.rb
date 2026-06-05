cask "font-iosevka-ss14" do
  version "34.6.1"
  sha256 "49c3b5fb76e2268b7951b0b6fc2bba8c1869dc0f0d1ad4a69365ceec194f169a"

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
