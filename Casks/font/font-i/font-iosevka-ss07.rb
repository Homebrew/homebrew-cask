cask "font-iosevka-ss07" do
  version "33.3.1"
  sha256 "0f7887f59ae5cd7e9afed243e8e727b56c8286b0a32a014664d82a4f7bb752ce"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS07-#{version}.zip"
  name "Iosevka SS07"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS07.ttc"

  # No zap stanza required
end
