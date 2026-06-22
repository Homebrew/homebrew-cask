cask "font-iosevka-ss13" do
  version "34.6.3"
  sha256 "2a4aaf09f8a32d96ecbcd776f72bd843a7f39fda5f5dedf35bd16110ffe91531"

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
