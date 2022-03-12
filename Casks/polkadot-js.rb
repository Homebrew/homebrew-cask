cask "polkadot-js" do
  version "0.108.1"
  sha256 "f24366472c5f2f20c48da9405cc89f9f196cf07baa55193a4bac3cb358f0c302"

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
