cask "apidog" do
  arch arm: "-macOS-arm64"
  livecheck_folder = on_arch_conditional arm: "mac-arm64", intel: "mac"

  version "2.3.3"
  sha256 arm:   "a2727d86f4fc0298bc8ae4a351e7c44e29ca07ac1e422b52764bbe6d879aa5f8",
         intel: "fb8f1615ce3230d4bf1eb295f660e5f9d076f9637aaf8398d9a7b044df17d9af"

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
