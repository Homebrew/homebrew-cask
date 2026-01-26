cask "font-iosevka-ss08" do
  version "34.1.0"
  sha256 "f9623e38d8fc87121e5858e4cab930c6e67d741c9ef2694df6200c16111e1360"

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
