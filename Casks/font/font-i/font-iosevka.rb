cask "font-iosevka" do
  version "34.6.3"
  sha256 "ecc5a79fac4d887a130d2ed36e8edf27784277c040bb8a48e295bd4529123074"

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
