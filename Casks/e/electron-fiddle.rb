cask "electron-fiddle" do
  arch arm: "arm64", intel: "x64"

  version "0.36.6"
  sha256 arm:   "ddd35b9f95e89945f2af4c0d3d8eed7861e5db89b586c63a2b95295a114d67a7",
         intel: "3761e355da74c31fe907cb2966bdb17010f4c63c9d8df68d64667c3ab2bd23fe"

  url "https://github.com/electron/fiddle/releases/download/v#{version}/Electron.Fiddle-darwin-#{arch}-#{version}.zip",
      verified: "github.com/electron/fiddle/"
  name "Electron Fiddle"
  desc "Create and play with small Electron experiments"
  homepage "https://www.electronjs.org/fiddle"

  livecheck do
    url :homepage
    regex(/href=.*?Electron[._-]Fiddle[._-]darwin[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on macos: ">= :big_sur"

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
