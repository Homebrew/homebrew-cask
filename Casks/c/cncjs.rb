cask "cncjs" do
  arch arm: "arm64", intel: "x64"

  version "1.11.0"
  sha256 arm:   "8a46dcedc78cf8ac89dadbe47c9ec6c0eae252300a2eeebf0c84da0b28c32f48",
         intel: "3793b520dbacbf97b1e137a6e6bf1b62e71e70b0f01f02b80ea2a2cc9726abd8"

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
