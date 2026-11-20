cask "shadow@beta" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10491"
  sha256 arm:   "020ffeb24ccdfa0865e78fa93d806be0d3691d0f1ce3545e6a1923888e7cb07f",
         intel: "21d9a6d3d2c7870fcda3f34a3bc8501170b9863acdc8a59300717b8a29028cd3"

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
