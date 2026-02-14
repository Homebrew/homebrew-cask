cask "apidog" do
  arch arm: "-macOS-arm64"
  livecheck_folder = on_arch_conditional arm: "-arm64"

  version "2.8.8"
  sha256 arm:   "ab3a47356b8ba0844a6590ceb41a61f294d9d2dd98f6b359dff1bd472e0431d1",
         intel: "b948cb8b49acbef3772a606508ebc233e9ebffe7c420ee3f06a7aa5389e3e369"

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
