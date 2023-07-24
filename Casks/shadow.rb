cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "8.0.10137"
  sha256 arm:   "ec9eb1786df2a1345c251a710821e484959990d1df2ef432c34bc01a7213d39a",
         intel: "b92772950be24d2da3fcc8d657a6de4f0d066bc4b16b67cd5997b693ea78823d"

  url "https://update.shadow.tech/launcher/prod/mac/#{arch}/ShadowPC-#{version}.dmg"
  name "Shadow"
  desc "Online virtualized computer"
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
