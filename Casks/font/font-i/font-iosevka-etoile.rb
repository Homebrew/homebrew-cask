cask "font-iosevka-etoile" do
  version "32.1.0"
  sha256 "42ae0fbf05824ac3d99b38daa796755c460cb7ba76862e67dbb2c85d7a3359b2"

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
