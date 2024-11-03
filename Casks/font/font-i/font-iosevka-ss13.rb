cask "font-iosevka-ss13" do
  version "32.0.1"
  sha256 "76656f8044ae7a2e7cb9bd78f2afb2fbbf7e2ba92414539a862f23d419e0bb7d"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS13-#{version}.zip"
  name "Iosevka SS13"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS13.ttc"

  # No zap stanza required
end
