cask "font-iosevka-ss13" do
  version "33.3.6"
  sha256 "b2c146eaaff8dd511409f3491083dc7c57f46ed26ead3781ee633e9e60ab93ce"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS13-#{version}.zip"
  name "Iosevka SS13"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS13.ttc"

  # No zap stanza required
end
