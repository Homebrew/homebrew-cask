cask "font-iosevka-ss12" do
  version "34.2.1"
  sha256 "775ecd9b8d7d01a68af0cc406c432583e335288bb65e20183eaa3acc8bfe5966"

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
