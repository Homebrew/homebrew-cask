cask "font-iosevka-curly" do
  version "34.9.0"
  sha256 "abe70124571a2cdce9c755091f8ba568b5c03dbc357a6695d99ec29d3a02eac3"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaCurly-#{version}.zip"
  name "Iosevka Curly"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaCurly.ttc"

  # No zap stanza required
end
