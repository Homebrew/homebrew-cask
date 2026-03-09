cask "apidog-europe" do
  arch arm: "-macOS-arm64"
  livecheck_folder = on_arch_conditional arm: "-arm64"

  version "2.8.12"
  sha256 arm:   "54ebd20284080b2d2fff6517c7f8d96a4e217c8c5045db0c6d942ad43922ff2e",
         intel: "4e9d2c310c70683e7aa6c7bacb305e02ab566a595ccb0e74fe7ed2067a8eba90"

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
