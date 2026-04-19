cask "font-iosevka-ss02" do
  version "34.4.0"
  sha256 "f9c41b85120e44037d6054749c3bde8bb668e129412da47a6654891300d399e5"

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
