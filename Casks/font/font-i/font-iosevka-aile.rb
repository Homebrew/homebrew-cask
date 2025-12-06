cask "font-iosevka-aile" do
  version "33.3.6"
  sha256 "fd998e85c4c289de52919d2a71eccd465b1e4583ac08744436e0a7c6a1dd66a3"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaAile-#{version}.zip"
  name "Iosevka Aile"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaAile.ttc"

  # No zap stanza required
end
