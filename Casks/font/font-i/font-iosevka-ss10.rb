cask "font-iosevka-ss10" do
  version "33.3.5"
  sha256 "a38fb571b81f49cce72e609c93f13245f89e6f1396982b0662216d69ff8c66ad"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS10-#{version}.zip"
  name "Iosevka SS10"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS10.ttc"

  # No zap stanza required
end
