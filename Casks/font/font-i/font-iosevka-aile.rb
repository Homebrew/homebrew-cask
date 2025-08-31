cask "font-iosevka-aile" do
  version "33.2.9"
  sha256 "30c8b78e5b06a06a5e1c19dca04ae87727b1226990a681827635f0574101c905"

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
