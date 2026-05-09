cask "font-iosevka" do
  version "34.5.0"
  sha256 "b8803ad674a0fe510be18d223565533600acf56dd49050804a26f4de3e3448d1"

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
