cask "apidog" do
  arch arm: "-macOS-arm64"
  livecheck_folder = on_arch_conditional arm: "-arm64"

  version "2.8.14"
  sha256 arm:   "79de0f512b05ab7e2104d88e772e32375fcc70a0819404579930abd0ebc7c714",
         intel: "279527a6a3e0f88a96e7b911032ccb8a16cd75e66aba09ad706f84eb440b906f"

  url "https://file-assets.apidog.com/download/#{version}/legacy-Apidog#{arch}-#{version}.dmg"
  name "Apidog"
  desc "API development platform"
  homepage "https://apidog.com/"

  livecheck do
    url "https://api.apidog.com/api/v1/configs/client-updates/latest/mac#{livecheck_folder}/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Apidog.app"

  zap trash: [
    "~/Library/Application Support/apidog",
    "~/Library/Preferences/com.apidog.app.plist",
    "~/Library/Saved Application State/com.apidog.app.savedState",
  ]
end
