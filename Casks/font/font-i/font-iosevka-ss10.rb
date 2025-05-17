cask "font-iosevka-ss10" do
  version "33.2.3"
  sha256 "910355a1ad71d9662d3d73cd192d6222f81c44abd65cd529aa1d931c0df0cd69"

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
