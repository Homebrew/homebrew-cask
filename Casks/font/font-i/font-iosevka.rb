cask "font-iosevka" do
  version "33.3.6"
  sha256 "6f4e2e562463bf416dfd99f7490c61da6d40ac2c21d757300c8a4b6f2484c919"

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
