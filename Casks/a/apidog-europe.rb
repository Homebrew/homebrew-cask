cask "apidog-europe" do
  arch arm: "-macOS-arm64"
  livecheck_folder = on_arch_conditional arm: "-arm64"

  version "2.5.15"
  sha256 arm:   "588c20bcc08a8a39e60316ca857fc2528411e4a973ddedbb9ee6321912c1fc18",
         intel: "7b4222a14fb868f693b90613bc55e25121b0ad016348faecc5660ed52e8e458a"

  url "https://assets.eu.apidog.com/download/#{version}/Apidog%20Europe#{arch}-#{version}.dmg"
  name "Apidog Europe"
  desc "API development platform hosted in Europe"
  homepage "https://apidog.com/"

  livecheck do
    url "https://api.eu.apidog.com/api/v1/configs/client-updates/latest/mac#{livecheck_folder}/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Apidog Europe.app"

  zap trash: [
    "~/Library/Application Support/apidog-eu",
    "~/Library/Preferences/com.apidog.eu.app.plist",
    "~/Library/Saved Application State/com.apidog.eu.app.savedState",
  ]
end
