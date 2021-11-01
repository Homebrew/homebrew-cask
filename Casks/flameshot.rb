cask "flameshot" do
  version "0.10.1"
  sha256 "c4d20d790ee2922506e92ef47d08986f87f4cb11dbabcb126b23ac2c8392b48f"

  url "https://github.com/flameshot-org/flameshot/releases/download/v#{version}/flameshot.dmg",
      verified: "github.com/flameshot-org/flameshot/"
  name "Flameshot"
  desc "Screenshot software"
  homepage "https://flameshot.org/"

  app "flameshot.app"

  zap trash: "~/.config/flameshot/flameshot.ini"
end
