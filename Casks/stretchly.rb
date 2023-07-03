cask "stretchly" do
  arch arm: "-arm64"

  version "1.14.1"
  sha256 arm:   "512a92316439b4dabbb12e05618d19a6323088ed9f325db2c41a1e3faa391136",
         intel: "092bb8c315cb8cba4c04b7867c94d826d789fe400143c616cfec1d1a19031f12"

  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}#{arch}.dmg",
      verified: "github.com/hovancik/stretchly/"
  name "Stretchly"
  desc "Break time reminder app"
  homepage "https://hovancik.net/stretchly/"

  app "Stretchly.app"

  zap trash: [
    "~/Library/Application Support/Stretchly",
    "~/Library/Logs/Stretchly",
    "~/Library/Preferences/net.hovancik.stretchly.plist",
  ]

  caveats <<~EOS
    This application is not signed. For details see:

    https://github.com/hovancik/stretchly#application-signing
  EOS
end
