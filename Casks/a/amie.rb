cask "amie" do
  arch arm: "-arm64"

  version "251121.0.4"
  sha256 arm:   "2b838c08008d8c46e37b99ac3f4b2b3b4aa9f58b7a0202ec55ef5e149fe9cb8a",
         intel: "28aae5bb9bb82c0fc360eae9f2909ee976962b0374a3af99372d26239ef3aea0"

  url "https://github.com/amieso/electron-releases/releases/download/v#{version}/Amie-#{version}#{arch}-mac.zip",
      verified: "github.com/amieso/electron-releases/"
  name "Amie"
  desc "Calendar and task manager"
  homepage "https://amie.so/"

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Amie.app"

  zap trash: [
    "~/Library/Application Support/amie-desktop",
    "~/Library/Caches/amie-desktop",
    "~/Library/Logs/amie-desktop",
    "~/Library/Preferences/so.amie.electron-app.plist",
    "~/Library/Saved Application State/so.amie.electron-app.savedState",
  ]
end
