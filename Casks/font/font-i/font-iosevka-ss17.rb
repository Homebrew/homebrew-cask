cask "font-iosevka-ss17" do
  version "31.9.1"
  sha256 "cf7da1ddec77286ad506baf96ad4ce648ea4a5ed31133043f4d840ce8274a43f"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS17-#{version}.zip"
  name "Iosevka SS17"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS17.ttc"

  # No zap stanza required
end
