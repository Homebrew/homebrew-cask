cask "font-iosevka-ss17" do
  version "33.2.1"
  sha256 "b9c546f1e2a4319efb954f877acce6c3504334e7f408dc90e19577f7672b7526"

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
