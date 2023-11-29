cask "blisk" do
  arch arm: "-m1"

  version "22.0.217.104"
  sha256 arm:   "9da96e395dd58c47fcd0df9eb1f6bb1b87233fa685da8c2cbdd42defe17aa8d5",
         intel: "5827c635764ab8dbb0332d52e2e66fbe52ce34948ff7acbeae005324d13fac46"

  url "https://bliskcloudstorage.blob.core.windows.net/mac#{arch}-installers/BliskInstaller_#{version}.dmg",
      verified: "bliskcloudstorage.blob.core.windows.net/"
  name "Blisk Browser"
  desc "Developer-oriented browser"
  homepage "https://blisk.io/"

  livecheck do
    url "https://blisk.io/download/?os=mac"
    regex(/href=.*?BliskInstaller[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Blisk.app"

  zap trash: [
    "~/Library/Application Support/Blisk",
    "~/Library/Caches/Blisk",
    "~/Library/Preferences/org.blisk.Blisk.plist",
    "~/Library/Saved Application State/org.blisk.Blisk.savedState",
  ]
end
