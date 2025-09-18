cask "focusany" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0"
  sha256 arm:   "ee2d1ddd7183878aa3f6571291f9308b47a7196fd1751d4c7acd91f0b968adc6",
         intel: "6711f1642d162a81538be42c8b70757803cfd135b29dac5849ae000abed3c400"

  url "https://github.com/modstart-lib/focusany/releases/download/v#{version}/FocusAny-#{version}-mac-#{arch}.dmg",
      verified: "github.com/modstart-lib/focusany/"
  name "FocusAny"
  desc "Open source desktop toolbox"
  homepage "https://focusany.com/"

  app "FocusAny.app"

  zap trash: [
    "~/Library/Application Support/focusany",
    "~/Library/Preferences/FocusAny.plist",
    "~/Library/Saved Application State/FocusAny.savedState",
  ]
end
