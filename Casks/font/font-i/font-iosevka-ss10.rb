cask "font-iosevka-ss10" do
  version "33.0.1"
  sha256 "45909c53801ab98de99fced7f5c67434634c36ca7cbb5bdc7ae9ebf8e4a2529c"

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
