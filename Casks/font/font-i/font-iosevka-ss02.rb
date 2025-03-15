cask "font-iosevka-ss02" do
  version "33.1.0"
  sha256 "d20e9b801b0522da3fcc2b16ffd52ed116b22043b5051c541e7d6d6a492d9013"

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
