cask "apidog" do
  arch arm: "-macOS-arm64"
  livecheck_folder = on_arch_conditional arm: "mac-arm64", intel: "mac"

  version "2.3.13"
  sha256 arm:   "4fe2f5edfb0e202791b3f066651ad1b63a10adaf052225433d1647a8456a7595",
         intel: "a1fd2d6f00e15cc8bec740690628117289395094c78e3e7c02f1052a3ad6ab90"

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
