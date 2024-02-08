cask "apidog" do
  arch arm: "-macOS-arm64"
  livecheck_folder = on_arch_conditional arm: "-arm64"

  version "2.5.5"
  sha256 arm:   "5ddc6b3ee4ed7678491f3a46d59a7b35998aa46edae8fe02773897f1f52704d0",
         intel: "688c4dde32c7b87855a585f6bc18b37ab5a479ee3f0772a4195907ed0a482f3c"

  url "https://assets.apidog.com/download/#{version}/Apidog#{arch}-#{version}.dmg"
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
