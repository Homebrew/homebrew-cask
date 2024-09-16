cask "blisk" do
  arch arm: "-m1"

  version "24.0.397.155"
  sha256 arm:   "40c9cc0fb051f84708d81e898e96143076a3081611d5b82b26e9aef6b4a10ae9",
         intel: "ecb02f088c2e2bc9ca7832786fe655bb7cef4a62123ab99b351b9c59a525d71b"

  url "https://bliskcloudstorage.blob.core.windows.net/mac#{arch}-installers/BliskInstaller_#{version}.dmg",
      verified: "bliskcloudstorage.blob.core.windows.net/"
  name "Blisk Browser"
  desc "Developer-oriented browser"
  homepage "https://blisk.io/"

  livecheck do
    url "https://blisk.io/download/installer/?os=mac#{arch}"
    strategy :header_match
  end

  depends_on macos: ">= :catalina"

  app "Blisk.app"

  zap trash: [
    "~/Library/Application Support/Blisk",
    "~/Library/Caches/Blisk",
    "~/Library/Preferences/org.blisk.Blisk.plist",
    "~/Library/Saved Application State/org.blisk.Blisk.savedState",
  ]
end
