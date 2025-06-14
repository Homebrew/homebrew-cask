cask "font-iosevka-ss04" do
  version "33.2.5"
  sha256 "339ccb7f5d6b0087ad9a1e8e9751697ae57eab9939986219f10c9cc7f818b740"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS04-#{version}.zip"
  name "Iosevka SS04"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS04.ttc"

  # No zap stanza required
end
