cask "font-iosevka-aile" do
  version "33.3.1"
  sha256 "79af9b2918646fa3c954a7be92b664a0adfca1cb0d10936f999285124e1c5821"

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
