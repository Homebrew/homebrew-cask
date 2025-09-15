cask "stretchly" do
  arch arm: "-arm64"

  version "1.18.0"
  sha256 arm:   "269326ed0a4d59cd6981b13cf454949473a18fed6eef4dc322ae1365285b4457",
         intel: "9c454764b19d0079c770ae894e88c4d0400f4a6573f74002ae2384144c4d1ec3"

  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}#{arch}.dmg",
      verified: "github.com/hovancik/stretchly/"
  name "Stretchly"
  desc "Break time reminder app"
  homepage "https://hovancik.net/stretchly/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :big_sur"

  app "Stretchly.app"

  uninstall quit: "net.hovancik.stretchly"

  zap trash: [
    "~/Library/Application Support/Stretchly",
    "~/Library/Logs/Stretchly",
    "~/Library/Preferences/net.hovancik.stretchly.plist",
  ]
end
