cask "apidog-europe" do
  arch arm: "-macOS-arm64"
  livecheck_folder = on_arch_conditional arm: "-arm64"

  version "2.6.26"
  sha256 arm:   "86c343d3330b5d75850122423d3da7878b4ab497331d0708e2276b4d9a0f7314",
         intel: "839213d76e0213ac75ada89ef0c91a912d3f75fcd21f6fca3be826ffc96ebdbf"

  url "https://file-assets.eu.apidog.com/download/#{version}/Apidog%20Europe#{arch}-#{version}.dmg"
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
