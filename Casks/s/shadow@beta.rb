cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10488"
  sha256 arm:   "10153be5f2d1717c3c7866f983f98111a5853a961b883835cff6d359ed12bc58",
         intel: "e2ff91105bb6447cd261a0e911ce6621eeaa0aecb01a5993ff9ab4f3a436b1a7"

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
