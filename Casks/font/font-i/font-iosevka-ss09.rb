cask "font-iosevka-ss09" do
  version "32.0.1"
  sha256 "c9cfdd05ef51fc39ee8638c1dd7df606075ab4745aae6aed3280e72ea05e7108"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS09-#{version}.zip"
  name "Iosevka SS09"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS09.ttc"

  # No zap stanza required
end
