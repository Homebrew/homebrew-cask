cask "font-iosevka-ss09" do
  version "33.2.9"
  sha256 "11b82ecb25c45cd001a460ef1b26fd19d18dcef380c69bb6402992a1234ad9f3"

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
