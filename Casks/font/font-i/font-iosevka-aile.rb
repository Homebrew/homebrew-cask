cask "font-iosevka-aile" do
  version "34.6.3"
  sha256 "e3b3581e76113c015e95b80c4a469fc05d68385859c1a3d2f55707e2daebc8e8"

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
