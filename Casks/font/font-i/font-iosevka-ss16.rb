cask "font-iosevka-ss16" do
  version "31.6.0"
  sha256 "96886e7bdf65a7d82fb068d840790f61d29b9a533752716cbaa3d279e6f85f7b"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS16-#{version}.zip"
  name "Iosevka SS16"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS16.ttc"

  # No zap stanza required
end
