cask "font-iosevka-ss04" do
  version "33.3.3"
  sha256 "26201940aad2ec36527eb9e3a337f531042b60193dd01a0518f6892b115799c8"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS04-#{version}.zip"
  name "Iosevka SS04"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS04.ttc"

  # No zap stanza required
end
