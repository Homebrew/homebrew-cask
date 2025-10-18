cask "font-iosevka-ss16" do
  version "33.3.2"
  sha256 "92e65def26646fb080d40aa1f803f5c3d7ed673da30de7de245c5c0af9f6eed9"

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
