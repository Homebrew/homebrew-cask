cask "obyte" do
  version "3.3.0"
  sha256 "05c8c43c3c28fb671aa51204aa481b0f339339344e5205982a33283298b97e17"

  # github.com/byteball/obyte-gui-wallet/ was verified as official when first introduced to the cask
  url "https://github.com/byteball/obyte-gui-wallet/releases/download/v#{version}/Obyte-osx64.dmg"
  appcast "https://github.com/byteball/obyte-gui-wallet/releases.atom"
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
