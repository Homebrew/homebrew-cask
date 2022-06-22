cask "flameshot" do
  version "12.0.0"
  sha256 "8ffb0c53d983583f8a045df2325ca4852114ace9b806d551d0ee61ebcbfe5007"

  url "https://github.com/flameshot-org/flameshot/releases/download/v#{version}/flameshot.dmg",
      verified: "github.com/flameshot-org/flameshot/"
  name "Flameshot"
  desc "Screenshot software"
  homepage "https://flameshot.org/"

  app "flameshot.app"

  zap trash: "~/.config/flameshot/flameshot.ini"
end
