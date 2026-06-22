cask "font-iosevka-etoile" do
  version "34.6.3"
  sha256 "671501cd1d2b50a2aa66664507d5479369474285e65c4d70efba748c17be3bc7"

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
