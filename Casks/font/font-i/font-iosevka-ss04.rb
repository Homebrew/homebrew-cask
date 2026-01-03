cask "font-iosevka-ss04" do
  version "34.0.0"
  sha256 "3b2d6c08bc75b1e50f1369046641502e16d74b8a43aa3cd25dc40f4f52fffec0"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS04-#{version}.zip"
  name "Iosevka SS04"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS04.ttc"

  # No zap stanza required
end
