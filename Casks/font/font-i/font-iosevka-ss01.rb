cask "font-iosevka-ss01" do
  version "34.7.0"
  sha256 "700c66b12d78c6b70bc21bc7235781e2f3371613924d9fc5cdf99ee225934dcd"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS01-#{version}.zip"
  name "Iosevka SS01"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS01.ttc"

  # No zap stanza required
end
