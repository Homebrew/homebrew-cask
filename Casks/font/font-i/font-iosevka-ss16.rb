cask "font-iosevka-ss16" do
  version "33.2.2"
  sha256 "d7a01bc0ba522ee7c5ba92e5d1b12bf35036638c6f1ce61538a6a17a7de0ab1c"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS16-#{version}.zip"
  name "Iosevka SS16"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS16.ttc"

  # No zap stanza required
end
