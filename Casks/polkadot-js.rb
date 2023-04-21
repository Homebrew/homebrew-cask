cask "polkadot-js" do
  version "0.126.1"
  sha256 "491606c6d20e0eda9d1dd032f510f7ba3f9def8c8dc9eb9e463f18105ebed855"

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
