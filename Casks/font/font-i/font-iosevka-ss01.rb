cask "font-iosevka-ss01" do
  version "33.3.2"
  sha256 "6eae0323e224ee211068972138ebc7160e5d4642e060691d9300657002aa86f4"

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
