cask "font-iosevka-ss12" do
  version "32.1.0"
  sha256 "0020b05981d654d4b6bc55fb61b71cf8ff81dc684ab14b6f80e19f915ddaae55"

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
