cask "flameshot" do
  version "0.10.2"
  sha256 "26e74c6756767d87996bdde8b4d8b460087856968a20030d399bffb30fe42ba9"

  url "https://github.com/flameshot-org/flameshot/releases/download/v#{version}/flameshot.dmg",
      verified: "github.com/flameshot-org/flameshot/"
  name "Flameshot"
  desc "Screenshot software"
  homepage "https://flameshot.org/"

  app "flameshot.app"

  zap trash: "~/.config/flameshot/flameshot.ini"
end
