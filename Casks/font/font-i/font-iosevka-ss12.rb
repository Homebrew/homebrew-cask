cask "font-iosevka-ss12" do
  version "33.2.9"
  sha256 "2dfdb60455724aca395109386fe773f2bd01d2a275f74894cef2f1892f113656"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS12-#{version}.zip"
  name "Iosevka SS12"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS12.ttc"

  # No zap stanza required
end
