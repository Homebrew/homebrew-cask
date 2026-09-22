cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10475"
  sha256 arm:   "3cc57c71abb71b67f009841501dc4f82ab8129989b5189d0500aff3a29ec4ecd",
         intel: "33e7e43ad8bf3b0dd939e7b2ef3839421b4a3575a676ea76d2b80431b18e1d50"

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
