cask "font-iosevka-etoile" do
  version "32.0.1"
  sha256 "0bcc729736862d1e0a20911adf2431cba9bbcf3a8c1aad874ef0b1127d2ad58e"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaEtoile-#{version}.zip"
  name "Iosevka Etoile"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaEtoile.ttc"

  # No zap stanza required
end
