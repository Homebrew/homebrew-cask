cask "electron-fiddle" do
  arch arm: "arm64", intel: "x64"

  version "0.38.0"
  sha256 arm:   "2a6ca62f16eb44c1ff4ecd01e81d79cb2cdefaa26e897bc15c88ab3d39b24c6a",
         intel: "b08e9455c135f3321d7d30b6b125ca483f01699ab52fda6ff988c7dbaad5d364"

  url "https://github.com/electron/fiddle/releases/download/v#{version}/Electron.Fiddle-darwin-#{arch}-#{version}.zip",
      verified: "github.com/electron/fiddle/"
  name "Electron Fiddle"
  desc "Create and play with small Electron experiments"
  homepage "https://www.electronjs.org/fiddle"

  livecheck do
    url :homepage
    regex(/href=.*?Electron[._-]Fiddle[._-]darwin[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on macos: ">= :monterey"

  app "Electron Fiddle.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.fiddle.sfl*",
    "~/Library/Application Support/Electron Fiddle",
    "~/Library/Caches/com.electron.fiddle*",
    "~/Library/Caches/fiddle-core",
    "~/Library/HTTPStorages/com.electron.fiddle",
    "~/Library/Preferences/com.electron.fiddle*.plist",
    "~/Library/Saved Application State/com.electron.fiddle.savedState",
  ]
end
