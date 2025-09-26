cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10300"
  sha256 arm:   "df1417d389a74faccc28af886eaa018f550181a225e976b7fb76952481a5537a",
         intel: "1b1d43b89e9f3a4744bc2bf3bc6b64e08fa75fd05faebd71af923b2034f79a65"

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
