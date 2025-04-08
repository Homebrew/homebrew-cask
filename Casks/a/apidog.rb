cask "apidog" do
  arch arm: "-macOS-arm64"
  livecheck_folder = on_arch_conditional arm: "-arm64"

  version "2.7.5"
  sha256 arm:   "f12313e527ec94475d80ad6ca30216ba6fdd0a45eca9781fddf9397f2e3af8b4",
         intel: "5947c8919fdb954ad0ad059467d15433ebda15e54f79a01cf34f34c6f4e5b719"

  url "https://file-assets.apidog.com/download/#{version}/legacy-Apidog#{arch}-#{version}.dmg"
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
