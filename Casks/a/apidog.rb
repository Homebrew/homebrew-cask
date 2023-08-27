cask "apidog" do
  arch arm: "-macOS-arm64"
  livecheck_folder = on_arch_conditional arm: "mac-arm64", intel: "mac"

  version "2.3.12"
  sha256 arm:   "603d1c8759520d3320036cd60b2f1c1d22e7e878774a359f05f6d7ea6b1731ad",
         intel: "87aef302e53ebf2e0392d72fad710367d91f607df510e5e0e690302776ff60fc"

  url "https://assets.apidog.com/download/#{version}/Apidog#{arch}-#{version}.dmg"
  name "Apidog"
  desc "API development platform"
  homepage "https://apidog.com/"

  livecheck do
    url "https://api.apidog.com/api/v1/configs/client-updates/#{version}/#{livecheck_folder}/latest-mac.yml"
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
