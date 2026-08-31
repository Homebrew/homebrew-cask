cask "font-iosevka-ss02" do
  version "34.8.1"
  sha256 "efb26f4b080ba52bb3136b2c396f6a938c126bcaab74e675cedfb1ef14d38060"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS02-#{version}.zip"
  name "Iosevka SS02"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS02.ttc"

  # No zap stanza required
end
