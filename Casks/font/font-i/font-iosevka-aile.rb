cask "font-iosevka-aile" do
  version "32.3.0"
  sha256 "2c62f85d1caa185c38091fddb0ebc1afe68ba3b2caffc8e71067000f5abf2df7"

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
