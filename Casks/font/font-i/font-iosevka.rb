cask "font-iosevka" do
  version "31.6.0"
  sha256 "b9c2ffb867ebc55b15b2f1c6dddee01aaebdd11a6e7cfcda05aba5dd2ffee56b"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-Iosevka-#{version}.zip"
  name "Iosevka"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "Iosevka.ttc"

  # No zap stanza required
end
