cask "font-iosevka-aile" do
  version "33.2.6"
  sha256 "c97f0a3850db9cf30635d19e62d74c3536b089953dfc56ec3c101b0d892a8e03"

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
