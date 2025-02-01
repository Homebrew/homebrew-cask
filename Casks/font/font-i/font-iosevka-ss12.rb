cask "font-iosevka-ss12" do
  version "32.5.0"
  sha256 "c02a1a0646c14b49cf10b6402947582266c93969ee38ff970aa715231b82de02"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS12-#{version}.zip"
  name "Iosevka SS12"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS12.ttc"

  # No zap stanza required
end
