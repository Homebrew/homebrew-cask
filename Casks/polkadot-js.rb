cask "polkadot-js" do
  version "0.117.3"
  sha256 "a714c88547bf116a1dbc58156ab2a202c8af39a07b2ed585362addbebf91e6d2"

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
