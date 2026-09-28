cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10481"
  sha256 arm:   "d490d74bd96f297a54cf6bf0d8626d9716570bd94f5bf9841822014e381bbbee",
         intel: "3ee0b19523bf9bffcb9135a12d9f20993f5646d02b6b052081a55a8b2a9b6f21"

  url "https://update.shadow.tech/launcher/prod/mac/#{arch}/ShadowPC-#{version}.dmg"
  name "Shadow"
  desc "Online virtualised computer"
  homepage "https://shadow.tech/"

  livecheck do
    url "https://update.shadow.tech/launcher/prod/mac/#{arch}/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on :macos

  app "Shadow PC.app"

  zap trash: [
    "~/Library/Application Support/Shadow",
    "~/Library/Preferences/com.electron.shadow.helper.plist",
    "~/Library/Preferences/com.electron.shadow.plist",
  ]
end
