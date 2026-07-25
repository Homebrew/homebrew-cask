cask "cncjs" do
  arch arm: "arm64", intel: "x64"

  version "1.11.2"
  sha256 arm:   "d1e8a0ed153a204422448612235134309d86aca1ccfcb48ac9cb197226a24512",
         intel: "838d7c518da7005f8ccea3b97092fbee0952028887dfe7a78d1165215b92d963"

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

  depends_on :macos

  app "CNCjs.app"

  zap trash: [
    "~/.cncjs-sessions",
    "~/Library/Application Support/CNCjs",
    "~/Library/Preferences/org.cncjs.plist",
    "~/Library/Saved Application State/org.cncjs.savedState",
  ]
end
