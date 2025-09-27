cask "font-iosevka-ss05" do
  version "33.3.1"
  sha256 "e0988b2266c3eccd1794ab07ba5739fa6ccb2f096b1a584caaaaff2103e7096f"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS05-#{version}.zip"
  name "Iosevka SS05"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS05.ttc"

  # No zap stanza required
end
