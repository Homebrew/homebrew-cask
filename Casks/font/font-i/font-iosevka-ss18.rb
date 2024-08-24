cask "font-iosevka-ss18" do
  version "31.4.0"
  sha256 "f59ad9aeaf241839e99a58d35562c25e84f4161b02638e507731689496a50eff"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS18-#{version}.zip"
  name "Iosevka SS18"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS18.ttc"

  # No zap stanza required
end
