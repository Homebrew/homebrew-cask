cask "font-iosevka-etoile" do
  version "32.4.0"
  sha256 "ac5575a0bc9fa55633490917bbfbf255656509235a189599400d2483d2bdede0"

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
