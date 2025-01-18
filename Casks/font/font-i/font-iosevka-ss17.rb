cask "font-iosevka-ss17" do
  version "32.4.0"
  sha256 "034841d1f5eac4117231be7e782e613e1e74ea0802f4fa171d7d1b61c110ace5"

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
