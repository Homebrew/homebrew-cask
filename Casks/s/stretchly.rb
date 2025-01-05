cask "stretchly" do
  arch arm: "-arm64"

  version "1.17.1"
  sha256 arm:   "4dc6ff48143f97eeae0db674f9472c74fb0e8af0ecd26429343d99bcb9584241",
         intel: "79e9715634197f459d6d988db08a2c61620aea1ccd3b88d43e296ee61c4914fa"

  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}#{arch}.dmg",
      verified: "github.com/hovancik/stretchly/"
  name "Stretchly"
  desc "Break time reminder app"
  homepage "https://hovancik.net/stretchly/"

  depends_on macos: ">= :big_sur"

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
