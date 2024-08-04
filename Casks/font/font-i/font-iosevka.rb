cask "font-iosevka" do
  version "31.1.0"
  sha256 "dc8a6521d01c258e3520464701d05aade52d84e3f8352d8b1128f945f9c948b0"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-Iosevka-#{version}.zip"
  name "Iosevka"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "Iosevka.ttc"

  # No zap stanza required
end
