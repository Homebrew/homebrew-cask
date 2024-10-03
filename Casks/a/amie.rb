cask "amie" do
  arch arm: "-arm64"

  version "241003.0.2"
  sha256 arm:   "4d63d34756ed3ca7e9038b6c561419cae3aa9108ca946e3d372a9bc09a95e075",
         intel: "b13a38e5a15cdd2647681b3c21f0a25404ade424308fcd3d4d568a6f76c94d70"

  url "https://github.com/amieso/electron-releases/releases/download/v#{version}/Amie-#{version}#{arch}-mac.zip",
      verified: "github.com/amieso/electron-releases/"
  name "Amie"
  desc "Calendar and task manager"
  homepage "https://amie.so/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Amie.app"

  zap trash: [
    "~/Library/Application Support/amie-desktop",
    "~/Library/Caches/amie-desktop",
    "~/Library/Logs/amie-desktop",
    "~/Library/Preferences/so.amie.electron-app.plist",
    "~/Library/Saved Application State/so.amie.electron-app.savedState",
  ]
end
