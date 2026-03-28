cask "font-iosevka-ss08" do
  version "34.3.0"
  sha256 "32a0978f027add77132c18e1dc4c8d1515a26836a452c1eb1e352e58c8494490"

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
