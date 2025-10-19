cask "font-iosevka-ss02" do
  version "33.3.3"
  sha256 "83bbc031dab74e5294fc53ad7b30f04d7e96a949a37e2fe2e4f1967505a1a6a7"

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
