cask "font-iosevka-ss17" do
  version "34.9.0"
  sha256 "3b5614c93f96f3c8a1006d447e02d54c62719b4e96cdfc628b521dfb61d34104"

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
