cask "stretchly" do
  arch arm: "-arm64"

  version "1.16.0"
  sha256 arm:   "eaf7204b77d7a2cd3fa3ff3e8e54fdf542440b33e035cef4799d31b35433eb5e",
         intel: "c2a3766833fb3a249af1ea939db18545be069254bffe6357bd83f725cadc4967"

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
