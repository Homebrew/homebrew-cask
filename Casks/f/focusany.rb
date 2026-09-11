cask "focusany" do
  arch arm: "arm64", intel: "x64"

  version "2.2.0"
  sha256 arm:   "2b783943d15e55e632ea56ea1185d1eb4790f452ab2b833ab646863f4fafbe96",
         intel: "a1d7585af304a179ee49e2f958f9fd31290178e4d99800591ab7cc8b3c6cc27f"

  url "https://github.com/modstart-lib/focusany/releases/download/v#{version}/FocusAny-#{version}-mac-#{arch}.dmg"
  name "FocusAny"
  desc "Open source desktop toolbox"
  homepage "https://focusany.com/"

  depends_on :macos

  app "FocusAny.app"

  zap trash: [
    "~/Library/Application Support/focusany",
    "~/Library/Preferences/FocusAny.plist",
    "~/Library/Saved Application State/FocusAny.savedState",
  ]
end
