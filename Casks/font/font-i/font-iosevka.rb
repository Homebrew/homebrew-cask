cask "font-iosevka" do
  version "33.3.0"
  sha256 "f88c1b547b333501b106de5746d588c337932595c5c5fa26c51c95dd06a6d3fb"

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
