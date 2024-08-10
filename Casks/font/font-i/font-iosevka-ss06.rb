cask "font-iosevka-ss06" do
  version "31.2.0"
  sha256 "fd8ce47400a9ac38a48c0ebd43204485cc41f74f5202576ba56399720ce20f5e"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS06-#{version}.zip"
  name "Iosevka SS06"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS06.ttc"

  # No zap stanza required
end
