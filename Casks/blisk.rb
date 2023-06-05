cask "blisk" do
  arch arm: "-m1"

  version "20.0.176.140"
  sha256 arm:   "f4041279b7a4d38013e8e60952b6e59a561c7dd5cb92eb635044f7fd69ff8aa5",
         intel: "6cfbb5c93fe85c44bc96c433e8eac214c9c52f4d68a70e540cff2ca3d4570c75"

  url "https://bliskcloudstorage.blob.core.windows.net/mac#{arch}-installers/BliskInstaller_#{version}.dmg",
      verified: "bliskcloudstorage.blob.core.windows.net/"
  name "Blisk Browser"
  desc "Developer-oriented browser"
  homepage "https://blisk.io/"

  livecheck do
    url "https://blisk.io/download/?os=mac"
    regex(/href=.*?BliskInstaller[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Blisk.app"

  zap trash: [
    "~/Library/Application Support/Blisk",
    "~/Library/Caches/Blisk",
    "~/Library/Preferences/org.blisk.Blisk.plist",
    "~/Library/Saved Application State/org.blisk.Blisk.savedState",
  ]
end
