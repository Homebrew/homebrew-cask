cask "flameshot" do
  version "0.10.0"
  sha256 "8433c67c89a6c1346abea46e0e01d57ed87f610b5d5a293c244974a61828c8a4"

  url "https://github.com/flameshot-org/flameshot/releases/download/v#{version}/flameshot.dmg",
      verified: "github.com/flameshot-org/flameshot/"
  name "Flameshot"
  desc "Screenshot software"
  homepage "https://flameshot.org/"

  app "flameshot.app"

  zap trash: "~/.config/flameshot/flameshot.ini"
end
