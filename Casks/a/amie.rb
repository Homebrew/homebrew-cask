cask "amie" do
  arch arm: "-arm64"

  version "231211.0.0"
  sha256 arm:   "866f6bcf0a6221af926bdbb2dbd700a456d9ba4dcc262b145e6aa3fe73fa1318",
         intel: "4698965ca6a19ad44c91cf25d81af5b3fcf5056123d4369316bb150f081f2a87"

  url "https://github.com/amieso/electron-releases/releases/download/v#{version}/Amie-#{version}#{arch}-mac.zip",
      verified: "github.com/amieso/electron-releases/"
  name "Amie"
  desc "Calendar and task manager"
  homepage "https://amie.so/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Amie.app"

  zap trash: [
    "~/Library/Application Support/amie-desktop",
    "~/Library/Caches/amie-desktop",
    "~/Library/Logs/amie-desktop",
    "~/Library/Preferences/so.amie.electron-app.plist",
    "~/Library/Saved Application State/so.amie.electron-app.savedState",
  ]
end
