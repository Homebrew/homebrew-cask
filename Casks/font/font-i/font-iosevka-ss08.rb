cask "font-iosevka-ss08" do
  version "33.3.3"
  sha256 "a439c3c3131f573e601206a1ea67504182057f1424c10ab813d0ff7867b4e444"

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
