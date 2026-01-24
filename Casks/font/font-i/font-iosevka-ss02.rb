cask "font-iosevka-ss02" do
  version "34.1.0"
  sha256 "4cd9e1e2281559f1ae4063ecb48c1c463d8d7856bb6eaaa1bbc4b31f35bf9e20"

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
