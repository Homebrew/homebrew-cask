cask "font-iosevka-ss13" do
  version "33.3.4"
  sha256 "be0364537c2c1f154542cc748ad7c2e7e4a7e4646b471e9f4c04d22076821341"

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
