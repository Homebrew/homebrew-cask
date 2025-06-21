cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10237"
  sha256 arm:   "716d20a84a1553f5dcfc54865d2e78ce6656cec0f3cb9709750ab4a12c4c2a47",
         intel: "d7562f66b1f0092800a21fbfa5671c46995747678a64d6ef6b6eb842e36f4cce"

  url "https://update.shadow.tech/launcher/preprod/mac/#{arch}/ShadowPCBeta-#{version}.dmg"
  name "Shadow PC Beta"
  desc "Online virtualized computer"
  homepage "https://shadow.tech/"

  livecheck do
    url "https://update.shadow.tech/launcher/preprod/mac/#{arch}/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :high_sierra"

  app "Shadow PC Beta.app"

  zap trash: [
    "~/Library/Application Support/shadow-preprod",
    "~/Library/Preferences/com.electron.shadow-beta.plist",
  ]
end
