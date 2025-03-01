cask "font-iosevka-ss12" do
  version "33.0.0"
  sha256 "2ffe449f9e9801abe53a53ddee35b5a806abbfda392a8cdfb58e892567382c6e"

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
