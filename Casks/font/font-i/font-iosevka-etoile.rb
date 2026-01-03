cask "font-iosevka-etoile" do
  version "34.0.0"
  sha256 "ef5fb6ebb95588c8fbf31cecf64d3cef95556e0910e7ee52121898d5a76087c2"

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
