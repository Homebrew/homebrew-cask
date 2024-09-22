cask "font-iosevka-ss12" do
  version "31.7.1"
  sha256 "73d122dbae341c27d557de632c917372c0a048c347ea50c49cd5ff22b431e861"

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
