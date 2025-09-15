cask "polkadot-js" do
  version "0.132.1"
  sha256 "4521d91f2ee9bf2df35102ca91bcddba1d46f71dd1901b9dd35725159ee07358"

  url "https://github.com/polkadot-js/apps/releases/download/v#{version}/Polkadot-JS-Apps-mac-#{version}.dmg",
      verified: "github.com/polkadot-js/apps/"
  name "polkadot{.js}"
  desc "Portal into the Polkadot and Substrate networks"
  homepage "https://polkadot.js.org/"

  # Upstream is not currently building for MacOS
  # ref: https://github.com/polkadot-js/apps/pull/11084
  deprecate! date: "2025-08-03", because: :discontinued

  app "Polkadot-JS Apps.app"

  zap trash: [
    "~/Library/Preferences/com.polkadotjs.polkadotjs-apps.plist",
    "~/Library/Saved Application State/com.polkadotjs.polkadotjs-apps.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
