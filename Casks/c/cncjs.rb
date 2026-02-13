cask "cncjs" do
  arch arm: "arm64", intel: "x64"

  version "1.10.8"
  sha256 arm:   "3d5df980082305a930be8ac88a808945d3f57545319a5223dff9f47eb0c4074e",
         intel: "35b11f9139b7a5f0e5691a176dab0a0375553611445048c5d4c4c119d664aed1"

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
