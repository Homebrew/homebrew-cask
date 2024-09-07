cask "font-iosevka-ss08" do
  version "31.6.0"
  sha256 "658a3526a03dcd7297b3aa1892b8f085d4428c2a9632f917dcc69f905e300e1e"

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
