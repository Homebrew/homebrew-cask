cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10494"
  sha256 arm:   "a5e66c170b23a00b80d4fe7122d06fa380d20d3f4dfe814472d3c1b903415d0a",
         intel: "e33cfff09ea867e5ae54660f8e05afc94d4e5655984ec80e893ec3726195f69f"

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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.shadow-beta.sfl*",
    "~/Library/Application Support/shadow-preprod",
    "~/Library/Preferences/com.electron.shadow-beta.plist",
  ]
end
