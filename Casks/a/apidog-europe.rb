cask "apidog-europe" do
  arch arm: "-macOS-arm64"
  livecheck_folder = on_arch_conditional arm: "-arm64"

  version "2.8.7"
  sha256 arm:   "a3847c43679bc4b232d0f395fe672de7562770d44ccee60e873d9f97097b17cf",
         intel: "edb74a2acb0e0298ef84c0850f180f6d104d58e92e577ef3123f4d7531c4d69e"

  url "https://file-assets.eu.apidog.com/download/#{version}/Apidog%20Europe#{arch}-#{version}.dmg"
  name "Apidog Europe"
  desc "API development platform hosted in Europe"
  homepage "https://apidog.com/"

  livecheck do
    url "https://api.eu.apidog.com/api/v1/configs/client-updates/latest/mac#{livecheck_folder}/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Apidog Europe.app"

  zap trash: [
    "~/Library/Application Support/apidog-eu",
    "~/Library/Preferences/com.apidog.eu.app.plist",
    "~/Library/Saved Application State/com.apidog.eu.app.savedState",
  ]
end
