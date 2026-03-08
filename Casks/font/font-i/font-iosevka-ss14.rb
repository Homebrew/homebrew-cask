cask "font-iosevka-ss14" do
  version "34.2.1"
  sha256 "2e06712b924a660d2156d21772830f3f63c05d2adaf53830fd1602999f681682"

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
