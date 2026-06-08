cask "font-iosevka-ss07" do
  version "34.6.1"
  sha256 "052da895f97861d4c0106e15f671e5382608c75c4ea8dd1a1b417f24d1e9283b"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS07-#{version}.zip"
  name "Iosevka SS07"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS07.ttc"

  # No zap stanza required
end
