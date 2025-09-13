cask "font-iosevka-ss17" do
  version "33.3.0"
  sha256 "3790903fd18a3978290d895ff1b5a8ed4e32b7f1c22275d69a3dccd098d3ef0f"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS17-#{version}.zip"
  name "Iosevka SS17"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS17.ttc"

  # No zap stanza required
end
