cask "stretchly" do
  arch arm: "-arm64"

  version "1.14.0"
  sha256 arm:   "1e8cc7b671ff096a4833e6211d6de876e4c20dc95b5dc6ef9eac116cb7d8b6ef",
         intel: "6ff9ecb47efab04f25f89bd72da5eb4965e7141562c1e1e3a01e8a6d501d414c"

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
    This application is not signed. See https://github.com/hovancik/stretchly#application-signing for details.
  EOS
end
