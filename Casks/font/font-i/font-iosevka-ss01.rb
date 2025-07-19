cask "font-iosevka-ss01" do
  version "33.2.7"
  sha256 "f8231d777ee4e76ad3abae31ca987eeaabd118efa56cbe697e5196c1f5a7f98b"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS01-#{version}.zip"
  name "Iosevka SS01"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS01.ttc"

  # No zap stanza required
end
