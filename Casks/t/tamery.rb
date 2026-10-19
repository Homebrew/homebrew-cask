cask "tamery" do
  arch arm: "arm64", intel: "x64"

  version "0.99.0"
  sha256 arm:   "ff02ad5a3fb116f07effb6fa6c67a05fe2f47dd5f5a7de23bf7fed44370bea91",
         intel: "cfc6a09232065b4ff94cc0505fdba1ecb211b036d1842c043a36487f57f740de"

  url "https://download.tamery.app/versions/#{version}/mac/dmg/#{arch}"
  name "Tamery"
  desc "AI-powered database client"
  homepage "https://tamery.app/"

  livecheck do
    url "https://download.todesktop.com/2610172p48e2t/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Tamery.app"

  zap trash: [
    "~/Library/Application Support/Tamery",
    "~/Library/Caches/@tamerydesktop-updater",
    "~/Library/HTTPStorages/com.wannabespace.tamery",
    "~/Library/Preferences/com.wannabespace.tamery.plist",
    "~/Library/Saved Application State/com.wannabespace.tamery.savedState",
  ]
end
