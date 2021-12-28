cask "stretchly" do
  version "1.9.0"
  sha256 "ca4f100f7291e5a0ddde06cec7295f843f6ae06df6551808c412f537eaaf2d15"

  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}.dmg",
      verified: "github.com/hovancik/stretchly/"
  name "Stretchly"
  desc "Break time reminder app"
  homepage "https://hovancik.net/stretchly/"

  app "Stretchly.app"
end
