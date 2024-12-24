cask "stretchly" do
  arch arm: "-arm64"

  version "1.17.0"
  sha256 arm:   "5800f7532868a6d9232aa7f01df6a77d64af242fa35faff7820cbfdcfb512c49",
         intel: "2808276569251f4d580ae0134f52b06a0e589e359151307ed128a124e83db093"

  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}#{arch}.dmg",
      verified: "github.com/hovancik/stretchly/"
  name "Stretchly"
  desc "Break time reminder app"
  homepage "https://hovancik.net/stretchly/"

  depends_on macos: ">= :catalina"

  app "Stretchly.app"

  uninstall quit: "net.hovancik.stretchly"

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
