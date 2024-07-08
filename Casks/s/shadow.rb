cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10076"
  sha256 arm:   "6eebb2be5a11641d9139216772abf8fedb3b144083c9088d22a8ffe06a632e1a",
         intel: "50f8fa08b536193491e532bfb95040815651bf0d24d56779c57be8ee67c2b899"

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
