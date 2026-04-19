cask "font-iosevka-aile" do
  version "34.4.0"
  sha256 "a2e8ebb91a8072a6f408f868062f4290096b56e07b495698df9f75656e5129a0"

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
