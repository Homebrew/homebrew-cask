cask "font-iosevka-etoile" do
  version "33.3.0"
  sha256 "f387caf644f817c2773def8351c2d1074ad70789453b410c179bd4143337a817"

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
