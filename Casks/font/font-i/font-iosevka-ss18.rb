cask "font-iosevka-ss18" do
  version "31.3.0"
  sha256 "eb4e2f1a62d3b44585f5ac7ff41fa4ece66d4ffae909562ad11036d46c7e080f"

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
