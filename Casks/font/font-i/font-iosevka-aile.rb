cask "font-iosevka-aile" do
  version "34.5.0"
  sha256 "21351aa7e3fea09fa9980ac27a38a1d3f09230ae33cdb84ed72adee1b6d4e661"

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
