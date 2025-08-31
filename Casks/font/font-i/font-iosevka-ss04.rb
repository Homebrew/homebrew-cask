cask "font-iosevka-ss04" do
  version "33.2.9"
  sha256 "2d9db57a16bd9ab3348b584535995dbd1b4b28a403519c885bd405d4d33e9511"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS04-#{version}.zip"
  name "Iosevka SS04"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS04.ttc"

  # No zap stanza required
end
