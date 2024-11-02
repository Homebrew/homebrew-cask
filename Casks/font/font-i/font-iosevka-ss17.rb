cask "font-iosevka-ss17" do
  version "32.0.0"
  sha256 "3f4e9be4aaece1d80f59a327ddd8402562d9a75debabfc3d8b50943879fe264a"

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
