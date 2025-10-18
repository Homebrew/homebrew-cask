cask "font-iosevka-ss18" do
  version "33.3.2"
  sha256 "c0e5ebf34c9add42584db8c3bee23b4ab580743957928e8f2734931cfc4dda84"

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
