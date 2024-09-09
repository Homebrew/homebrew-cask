cask "font-iosevka-etoile" do
  version "31.6.1"
  sha256 "83ea67d19f29c56c7bb7d10e0d6b426bffde08eccbf2aebfe83fb00f812a25e3"

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
