cask "font-iosevka-ss11" do
  version "34.7.0"
  sha256 "1389c32abfa62e26d9cbca51f3be6a124d670e3194d08127d95154dbd2873b4d"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS11-#{version}.zip"
  name "Iosevka SS11"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS11.ttc"

  # No zap stanza required
end
