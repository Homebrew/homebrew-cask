cask "font-iosevka-aile" do
  version "34.0.0"
  sha256 "2d7057ec6a10597c53d429bdc7c05d9d80eb397be475c468193d152760c9c4ca"

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
