cask "parsify" do
  arch arm: "arm64", intel: "x64"

  version "2.0.1"
  sha256 arm:   "d4f9027b297089ec755880e95b0d0f4998c4f6988b3f0a845720cbc514b36c38",
         intel: "a2d44bd3c947d73562e73162be276ec62fe6f8f55d1410f211ec487f5f3fb6f0"

  url "https://github.com/parsify-dev/desktop/releases/download/v#{version}/Parsify-#{version}-mac-#{arch}.zip",
      verified: "github.com/parsify-dev/desktop/"
  name "Parsify"
  desc "Extensible calculator with unit and currency conversions"
  homepage "https://parsify.app/"

  app "Parsify.app"

  zap trash: [
    "~/Library/Application Support/Parsify Desktop",
    "~/Library/Preferences/app.parsifydesktop.plist",
    "~/Library/Saved Application State/app.parsify.parsifydesktop.savedState",
  ]
end
