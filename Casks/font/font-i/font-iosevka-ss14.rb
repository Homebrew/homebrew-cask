cask "font-iosevka-ss14" do
  version "33.2.9"
  sha256 "e954d7421d675b2e0caf29da7409c4fed6135b6b1bb0cfc894dfd3ca0295ea5d"

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
