cask "focusany" do
  arch arm: "arm64", intel: "x64"

  version "2.1.0"
  sha256 arm:   "500748811382d04e1756500ece790385fdec272e2a70162554e6e3dc7300757b",
         intel: "29114bec682c819f469ae667244dfa99a88d040a9ae33ad9dd11e43dd3cf8fef"

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
