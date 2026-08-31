cask "cncjs" do
  version "1.11.3"
  sha256 "38a64190d8e03b66d732b8a960cd0f0e1aaa1030cc90efdbe8c9da36387b40ae"

  url "https://github.com/cncjs/cncjs/releases/download/v#{version}/cncjs-app-#{version}-macos-arm64.dmg"
  name "CNSjs"
  desc "Interface for CNC milling controllers"
  homepage "https://cnc.js.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos
  depends_on arch: :arm64

  app "CNCjs.app"

  zap trash: [
    "~/.cncjs-sessions",
    "~/Library/Application Support/CNCjs",
    "~/Library/Preferences/org.cncjs.plist",
    "~/Library/Saved Application State/org.cncjs.savedState",
  ]
end
