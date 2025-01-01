cask "font-iosevka-etoile" do
  version "32.3.1"
  sha256 "b11d51a4fc90742848514b1c4a50209137f9982aca489e0364d459e5f944a3de"

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
