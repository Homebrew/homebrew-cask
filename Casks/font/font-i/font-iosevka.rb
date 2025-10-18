cask "font-iosevka" do
  version "33.3.2"
  sha256 "7ff718e992537334db8fcffdbe602913f484315ce82148d2fc7f7d7118f175eb"

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
