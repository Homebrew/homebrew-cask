cask "font-iosevka-ss18" do
  version "33.2.1"
  sha256 "96bc6f57bb6608320ad282603e701c3bbff321db78b3e15d18880a62a5bc6223"

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
