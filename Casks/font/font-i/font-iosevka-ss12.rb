cask "font-iosevka-ss12" do
  version "34.1.0"
  sha256 "7415ba8fb8e585425ddedb832e70d9b3613ae63a31907ddfdae3fd62c10239e5"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS12-#{version}.zip"
  name "Iosevka SS12"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS12.ttc"

  # No zap stanza required
end
