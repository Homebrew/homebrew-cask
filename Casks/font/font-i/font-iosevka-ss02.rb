cask "font-iosevka-ss02" do
  version "33.3.4"
  sha256 "e14c2792c53e9cc4c453320e1a78ed03510278505964f6f4f03f31fe7e8a68e1"

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
