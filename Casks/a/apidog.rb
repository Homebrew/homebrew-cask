cask "apidog" do
  arch arm: "-macOS-arm64"
  livecheck_folder = on_arch_conditional arm: "-arm64"

  version "2.6.38"
  sha256 arm:   "f9c3bfc54dee8f098811caa4e8d3d9ca3edb2bed891307e24346a55cda8b11e8",
         intel: "5b410e9acc418355e0c0271b37f2c95886f38e3273627c0537ef66a8bc1498c6"

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
