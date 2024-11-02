cask "font-iosevka-ss12" do
  version "32.0.0"
  sha256 "62fc571ca1a87e10259c5c7a2dba65cea80c7d649dbbf67738266683a7eb074b"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS12-#{version}.zip"
  name "Iosevka SS12"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS12.ttc"

  # No zap stanza required
end
