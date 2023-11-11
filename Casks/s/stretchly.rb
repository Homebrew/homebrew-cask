cask "stretchly" do
  arch arm: "-arm64"

  version "1.15.0"
  sha256 arm:   "47429cf3a149bd45a884e7ae9e1fc50b9f31afb315ce1e1dcc6f919ddc7bf8c8",
         intel: "6065509aa6667939b464d912455b777ce64b6869cb47721562c786eea1e0c773"

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
