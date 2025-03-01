cask "font-iosevka-ss08" do
  version "33.0.0"
  sha256 "1548b7eb2c0de721dd39768743aad33a7fa81923f857f6c4b877a2f53892ede1"

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
