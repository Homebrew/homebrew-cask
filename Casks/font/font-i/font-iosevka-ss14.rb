cask "font-iosevka-ss14" do
  version "32.4.0"
  sha256 "46f95863a508e47207b75d090fed92fd7d601dfae9b98447fdea32d3fe3a783d"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS14-#{version}.zip"
  name "Iosevka SS14"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS14.ttc"

  # No zap stanza required
end
