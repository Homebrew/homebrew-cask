cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "9.9.10477"
  sha256 arm:   "21746ce41f450a9577f7d0941b6604c1db23bc2dd970408ee0b91ab6958c6f9e",
         intel: "9bc10a3ebcbdffcc3d27f41e996f34bfe6eeb760c82e901376abe37c072dc879"

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
