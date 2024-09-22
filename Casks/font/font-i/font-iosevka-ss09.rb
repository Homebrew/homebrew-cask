cask "font-iosevka-ss09" do
  version "31.7.1"
  sha256 "3e1b9d9d670b156d01c688d0876afd6f31ce76681d4187f781242375cb30c634"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS09-#{version}.zip"
  name "Iosevka SS09"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS09.ttc"

  # No zap stanza required
end
