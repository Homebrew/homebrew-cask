cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10414"
  sha256 arm:   "b3c30d8eaed26698583b9747c02b2e790995eff1eed458459e42df95e8538473",
         intel: "0886c5655705f97dbbb9a6760fd2b11ca6640b945c9b841f1899bf4906d4cb9c"

  url "https://update.shadow.tech/launcher/preprod/mac/#{arch}/ShadowPCBeta-#{version}.dmg"
  name "Shadow PC Beta"
  desc "Online virtualized computer"
  homepage "https://shadow.tech/"

  livecheck do
    url "https://update.shadow.tech/launcher/preprod/mac/#{arch}/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on :macos

  app "Shadow PC Beta.app"

  zap trash: [
    "~/Library/Application Support/shadow-preprod",
    "~/Library/Preferences/com.electron.shadow-beta.plist",
  ]
end
