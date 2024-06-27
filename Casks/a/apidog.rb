cask "apidog" do
  arch arm: "-macOS-arm64"
  livecheck_folder = on_arch_conditional arm: "-arm64"

  version "2.5.34"
  sha256 arm:   "1ded56bbc2fa5fc1cb4a6ed0d3fcb5933f038a4d7c71930a2bedd0ba841862b2",
         intel: "3d22acfd3780b09611662f923578e2e887847a77cf1e77a194d7849669b649f6"

  url "https://file-assets.apidog.com/download/#{version}/Apidog#{arch}-#{version}.dmg"
  name "Apidog"
  desc "API development platform"
  homepage "https://apidog.com/"

  livecheck do
    url "https://api.apidog.com/api/v1/configs/client-updates/latest/mac#{livecheck_folder}/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Apidog.app"

  zap trash: [
    "~/Library/Application Support/apidog",
    "~/Library/Preferences/com.apidog.app.plist",
    "~/Library/Saved Application State/com.apidog.app.savedState",
  ]
end
