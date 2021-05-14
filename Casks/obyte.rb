cask "obyte" do
  version "3.3.2"
  sha256 "a8326eeb9d13f1d1a7983bfc696eb27408458e3ef66a6932e05d6f18d79a2644"

  url "https://github.com/byteball/obyte-gui-wallet/releases/download/v#{version}/Obyte-osx64.dmg",
      verified: "github.com/byteball/obyte-gui-wallet/"
  name "Obyte"
  desc "Smart payments made simple"
  homepage "https://obyte.org/"

  app "Obyte.app"

  zap trash: [
    "~/Library/Application Support/obyte",
    "~/Library/Caches/obyte",
    "~/Library/Preferences/com.nw-builder.obyte.plist",
    "~/Library/Saved Application State/com.nw-builder.obyte.savedState",
  ]
end
