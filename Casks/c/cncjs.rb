cask "cncjs" do
  arch arm: "arm64", intel: "x64"

  version "1.10.9"
  sha256 arm:   "18318b0327f30e7d2d403328777764ffc75e7eb08f03a1a4d814e6e0477d1c24",
         intel: "e17b3318755451f9c6277ee936450df0b31cbc940d97b3200676b0b743a91530"

  url "https://github.com/cncjs/cncjs/releases/download/v#{version}/cncjs-app-#{version}-macos-#{arch}.dmg",
      verified: "github.com/cncjs/cncjs/"
  name "CNSjs"
  desc "Interface for CNC milling controllers"
  homepage "https://cnc.js.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "CNCjs.app"

  zap trash: [
    "~/.cncjs-sessions",
    "~/Library/Application Support/CNCjs",
    "~/Library/Preferences/org.cncjs.plist",
    "~/Library/Saved Application State/org.cncjs.savedState",
  ]
end
