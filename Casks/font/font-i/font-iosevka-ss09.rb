cask "font-iosevka-ss09" do
  version "33.2.8"
  sha256 "bb3c04e386a9a50d5d3c1d5f520499fc201d516932429b283309f0cee5ed5dfa"

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
