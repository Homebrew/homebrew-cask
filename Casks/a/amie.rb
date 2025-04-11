cask "amie" do
  arch arm: "-arm64"

  version "250410.0.3"
  sha256 arm:   "57b83a55394ca533837ea360821a4e08615cfbb523d6edfc6effcee93aeb5b4d",
         intel: "3b890a0d3eec30fd7a2b1822087a832838fae40cd81661d33fe27f0300ff4ddb"

  url "https://github.com/amieso/electron-releases/releases/download/v#{version}/Amie-#{version}#{arch}-mac.zip",
      verified: "github.com/amieso/electron-releases/"
  name "Amie"
  desc "Calendar and task manager"
  homepage "https://amie.so/"

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Amie.app"

  zap trash: [
    "~/Library/Application Support/amie-desktop",
    "~/Library/Caches/amie-desktop",
    "~/Library/Logs/amie-desktop",
    "~/Library/Preferences/so.amie.electron-app.plist",
    "~/Library/Saved Application State/so.amie.electron-app.savedState",
  ]
end
