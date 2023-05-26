cask "polkadot-js" do
  version "0.131.4"
  sha256 "97147b8090a1ff52c49e1c7b86759bf43d902c803ea385ce7a01e1d5ca4ebd02"

  url "https://github.com/polkadot-js/apps/releases/download/v#{version}/Polkadot-JS-Apps-mac-#{version}.dmg",
      verified: "github.com/polkadot-js/apps/"
  name "polkadot{.js}"
  desc "Portal into the Polkadot and Substrate networks"
  homepage "https://polkadot.js.org/"

  app "Polkadot-JS Apps.app"

  zap trash: [
    "~/Library/Preferences/com.polkadotjs.polkadotjs-apps.plist",
    "~/Library/Saved Application State/com.polkadotjs.polkadotjs-apps.savedState",
  ]
end
