cask "amie" do
  arch arm: "-arm64"

  version "251120.1.0"
  sha256 arm:   "3dc0dc9f35c65f82557438e7b58766f551ec265ffdff018e1aaa8074f3977283",
         intel: "54b5d71d2edb4683379a86f953d8a3c466aef5e5efbddcb404c7fa831957590d"

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
