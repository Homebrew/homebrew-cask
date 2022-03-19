cask "flameshot" do
  version "11.0.0"
  sha256 "c1d504526fb7b3520b7efd4fce68de67526d2b99aa23efa0e819468f546c7c67"

  url "https://github.com/flameshot-org/flameshot/releases/download/v#{version}/flameshot.dmg",
      verified: "github.com/flameshot-org/flameshot/"
  name "Flameshot"
  desc "Screenshot software"
  homepage "https://flameshot.org/"

  app "flameshot.app"

  zap trash: "~/.config/flameshot/flameshot.ini"
end
