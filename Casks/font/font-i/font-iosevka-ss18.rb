cask "font-iosevka-ss18" do
  version "34.9.0"
  sha256 "d4d6002c4deb764a303efe8d709f87d5e969447cd9d7260c7d481e221f649f6a"

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
