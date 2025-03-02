cask "font-iosevka-ss14" do
  version "33.0.1"
  sha256 "c42ab74fbcde8f60af6d59391524af6e60dc2bd6ec3bcb5c7c88cabec277a1d9"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS14-#{version}.zip"
  name "Iosevka SS14"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS14.ttc"

  # No zap stanza required
end
