cask "font-iosevka-ss12" do
  version "34.4.0"
  sha256 "fbb6e34e8e6636e54abfa77327b1685a3099d4a353589662a94fd104c7e96903"

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
