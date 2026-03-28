cask "font-iosevka-etoile" do
  version "34.3.0"
  sha256 "61d9380eeb3f9dd0b9d6d149b5ff24102d6b70c6215e439fc30c6901387d1839"

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
