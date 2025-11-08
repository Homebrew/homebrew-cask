cask "font-iosevka-ss17" do
  version "33.3.4"
  sha256 "d9015d81841a79cad917aba1732c149b20fbff4b17ad3afcfaee7df6fbce8f53"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS17-#{version}.zip"
  name "Iosevka SS17"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS17.ttc"

  # No zap stanza required
end
