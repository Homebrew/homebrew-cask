cask "apidog" do
  arch arm: "-macOS-arm64"
  livecheck_folder = on_arch_conditional arm: "-arm64"

  version "2.8.28"
  sha256 arm:   "072bf8258c9775cb8d8b1ee9dcabfb24ac24898fc6a30afef463bf24f46c3d72",
         intel: "216f0150bf355e1e2240a516c76375aabbbb19e0d1ef9c7d1f959ca835d7123b"

  url "https://file-assets.apidog.com/download/#{version}/legacy-Apidog#{arch}-#{version}.dmg"
  name "Apidog"
  desc "API development platform"
  homepage "https://apidog.com/"

  livecheck do
    url "https://api.apidog.com/api/v1/configs/client-updates/latest/mac#{livecheck_folder}/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on :macos

  app "Apidog.app"

  zap trash: [
    "~/Library/Application Support/apidog",
    "~/Library/Preferences/com.apidog.app.plist",
    "~/Library/Saved Application State/com.apidog.app.savedState",
  ]
end
