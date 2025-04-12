cask "font-iosevka-ss12" do
  version "33.2.1"
  sha256 "9a231a85b75e4ff42121f1c5048aa5ac9f1c7d9970323d4aa562d95650e8b343"

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
