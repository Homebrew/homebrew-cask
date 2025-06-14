cask "font-iosevka-aile" do
  version "33.2.5"
  sha256 "b21b0d1be237b092f39ada414b84d9a64e2db7762ac47751d460097f7d59b083"

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
