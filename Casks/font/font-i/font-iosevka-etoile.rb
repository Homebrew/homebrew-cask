cask "font-iosevka-etoile" do
  version "34.7.0"
  sha256 "5ccd6ec85544dde53721fd500f2db02a25d02309f815b77a4e46d19c485cf0ad"

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
