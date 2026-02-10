cask "font-iosevka-ss06" do
  version "34.1.0"
  sha256 "034f04772d73139a3d0c9181fd395add3856c4006bb2eafcd9b1f5a587af3469"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS06-#{version}.zip"
  name "Iosevka SS06"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS06.ttc"

  # No zap stanza required
end
