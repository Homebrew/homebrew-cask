cask "font-iosevka-ss08" do
  version "34.8.1"
  sha256 "faabab2d25d8bb805935db26d1e1928c27d1739f6c41681de97c244db1b36b5f"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS08-#{version}.zip"
  name "Iosevka SS08"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS08.ttc"

  # No zap stanza required
end
