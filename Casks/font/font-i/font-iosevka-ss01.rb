cask "font-iosevka-ss01" do
  version "32.0.0"
  sha256 "8dd56337b543fbdcb430c3aa8414cb63fde8c550805c9a05b9f5dd8552249274"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS01-#{version}.zip"
  name "Iosevka SS01"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS01.ttc"

  # No zap stanza required
end
