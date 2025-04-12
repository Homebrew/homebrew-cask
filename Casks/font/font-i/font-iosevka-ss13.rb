cask "font-iosevka-ss13" do
  version "33.2.1"
  sha256 "66d71aa50e03c2640ed1bd0510b770e78011fe6b6a26e8da2e453e7e80c28901"

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
