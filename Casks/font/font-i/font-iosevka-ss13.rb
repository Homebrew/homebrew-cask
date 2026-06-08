cask "font-iosevka-ss13" do
  version "34.6.1"
  sha256 "4cb269f069ad8b12187b3a0c49755ed9876728d8ff156aca4eef8a7d5152005f"

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
