cask "font-iosevka-etoile" do
  version "33.2.8"
  sha256 "311db6965b22b39ad3672b21941fb9351d8ec5e5cdfc05495bbcb2a87dbb7b9a"

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
