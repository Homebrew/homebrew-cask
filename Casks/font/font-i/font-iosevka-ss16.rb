cask "font-iosevka-ss16" do
  version "33.2.8"
  sha256 "36de5f9f12a8bb4986e2ebe9b2d46659cf54cabdc01a65a6796a23e230d66ecb"

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
