cask "font-iosevka-ss02" do
  version "34.9.1"
  sha256 "17949ad1944bc591e23477d725e67914cb279a58716250914fb2edb3e7699993"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS02-#{version}.zip"
  name "Iosevka SS02"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS02.ttc"

  # No zap stanza required
end
