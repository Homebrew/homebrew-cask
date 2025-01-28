cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10174"
  sha256 arm:   "2eaf32ef3e5f660497d81712abd0fd73ca31016f90dceb3e3caf3d858cdf3e49",
         intel: "ee26f550c5f0e1a6ef4fa041aec27623b07887a323f00b4fed7f3dd490cdc39b"

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
