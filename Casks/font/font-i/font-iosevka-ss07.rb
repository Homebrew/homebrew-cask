cask "font-iosevka-ss07" do
  version "34.6.3"
  sha256 "b00f5d9c61df7a05b2a72b9e69b73c2349e80d5a07492241f12e679404dcf332"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS07-#{version}.zip"
  name "Iosevka SS07"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS07.ttc"

  # No zap stanza required
end
