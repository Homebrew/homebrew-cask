cask "font-iosevka-ss10" do
  version "33.3.4"
  sha256 "e9073c6546a64b3cedfa4b1f84bf833c8d8298cbf0c22201cfc42c26302cedab"

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
