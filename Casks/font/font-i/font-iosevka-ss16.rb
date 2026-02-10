cask "font-iosevka-ss16" do
  version "34.1.0"
  sha256 "9e05b708d3bb6e0616fee6d873ec079d6f40a92928eb66b78f3671947de55330"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS16-#{version}.zip"
  name "Iosevka SS16"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS16.ttc"

  # No zap stanza required
end
