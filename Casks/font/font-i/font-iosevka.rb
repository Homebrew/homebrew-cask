cask "font-iosevka" do
  version "31.6.1"
  sha256 "6ba820a01f0dd5fe282f3132cb5474042a5a75cb21a876c0c4d96996bd8118ad"

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
