cask "font-iosevka-ss08" do
  version "34.7.0"
  sha256 "51f56abdaf3b42df977328e1dc4cd8f9e2e1eac4735925ebcdd4def02912f186"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS08-#{version}.zip"
  name "Iosevka SS08"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS08.ttc"

  # No zap stanza required
end
