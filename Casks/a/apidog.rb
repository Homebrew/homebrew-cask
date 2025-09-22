cask "apidog" do
  arch arm: "-macOS-arm64"
  livecheck_folder = on_arch_conditional arm: "-arm64"

  version "2.7.37"
  sha256 arm:   "a9b6ea76888879cd44c7da3181a7faeab056b6cf4317ccb774f0299fc46f9e3e",
         intel: "3333acc9d8b3a072abf3819a32e38c497c768e4f72298c2e4d5360db21771849"

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
