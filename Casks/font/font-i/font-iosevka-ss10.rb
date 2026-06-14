cask "font-iosevka-ss10" do
  version "34.6.3"
  sha256 "cf5d31a3a00308fb0bc38bfe96d170901e1396e56505516a1886719ced74735a"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS10-#{version}.zip"
  name "Iosevka SS10"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS10.ttc"

  # No zap stanza required
end
