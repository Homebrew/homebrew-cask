cask "font-iosevka-ss07" do
  version "33.2.4"
  sha256 "690f6c886ee3b6bd4bd7564469de5493684a327698eea8c4c3c128587e33a495"

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
