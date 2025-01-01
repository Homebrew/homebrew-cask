cask "font-iosevka-ss12" do
  version "32.3.1"
  sha256 "a93604fdbdcd73c4ad9e4047c3febf87c28e061aa57d1f9608678631f0c130fe"

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
