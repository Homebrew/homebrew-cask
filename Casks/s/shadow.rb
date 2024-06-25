cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10060"
  sha256 arm:   "be1820d94c8b3839caaa8cfab21ca5f0cd90d0404d11de96693e82a66a8f088d",
         intel: "798c184856b3f319e49f59f89a05e48811f705aac4df08d0a8b9ccb9673d487b"

  url "https://update.shadow.tech/launcher/prod/mac/#{arch}/ShadowPC-#{version}.dmg"
  name "Shadow"
  desc "Online virtualised computer"
  homepage "https://shadow.tech/"

  livecheck do
    url "https://update.shadow.tech/launcher/prod/mac/#{arch}/latest-mac.yml"
    strategy :electron_builder
  end

  app "Shadow PC.app"

  zap trash: [
    "~/Library/Application Support/Shadow",
    "~/Library/Preferences/com.electron.shadow.helper.plist",
    "~/Library/Preferences/com.electron.shadow.plist",
  ]
end
