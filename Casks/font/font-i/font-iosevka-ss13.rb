cask "font-iosevka-ss13" do
  version "33.2.8"
  sha256 "b66e701600d3ef1bdbc6f1517e9d5533cb9e7ebe5f3b58d076e258fefbca58f2"

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
