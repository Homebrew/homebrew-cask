cask "font-iosevka-ss09" do
  version "34.8.1"
  sha256 "ba6e76a6f084495da9a1c64f9703282cca24804a1d85a7c268e4f321716ec711"

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
