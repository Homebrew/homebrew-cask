cask "font-iosevka-ss12" do
  version "34.6.3"
  sha256 "5d5033e19aac47e5719594ab8baf28753dbd739a6b3db81b300dcf0914380baa"

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
