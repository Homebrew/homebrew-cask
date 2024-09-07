cask "font-iosevka-ss13" do
  version "31.6.0"
  sha256 "c0c2acbf159441c349d074fafc7c2261dd313f9d8171415560eaf17d3cfd9872"

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
