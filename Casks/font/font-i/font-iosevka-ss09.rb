cask "font-iosevka-ss09" do
  version "34.6.2"
  sha256 "f1a97ab713bffdd426cf3257e128bd89b57ddcc8aee32bd0c3992cb244277adc"

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
