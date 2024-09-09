cask "font-iosevka-aile" do
  version "31.6.1"
  sha256 "785a6634e295e54fbe414426549f259fe4318dec33152d3e58ba760e6fad1c88"

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
