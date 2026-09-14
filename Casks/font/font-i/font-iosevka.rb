cask "font-iosevka" do
  version "34.8.1"
  sha256 "ce04ad495fb36deab10acd0760ad36916ed74a9436399731c7fe49c6d0462573"

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
