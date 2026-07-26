cask "font-iosevka-ss18" do
  version "34.8.0"
  sha256 "9b9881ecd895775a56f0c236043cecf8c63e0ae82a559a6dd1db2c7bcdc5c551"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS18-#{version}.zip"
  name "Iosevka SS18"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS18.ttc"

  # No zap stanza required
end
