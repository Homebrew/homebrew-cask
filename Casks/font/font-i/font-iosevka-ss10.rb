cask "font-iosevka-ss10" do
  version "34.6.2"
  sha256 "76dccc1948566dd6743b8b657f3d75887a8ae9fb8e44642fcc30b72f8662e558"

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
