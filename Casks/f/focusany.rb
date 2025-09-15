cask "focusany" do
  arch arm: "arm64", intel: "x64"

  version "0.9.0"
  sha256 arm:   "b9d664e52e97c3df131612ee9255526705862ad8f063f3dbc299c7cfdbf394e5",
         intel: "bb4c4a708ea3e6fc2a8a6177e65167ced4d0bfcedb01ff4f4bd6daf79169a804"

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
