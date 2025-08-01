cask "electron-fiddle" do
  arch arm: "arm64", intel: "x64"

  version "0.37.2"
  sha256 arm:   "afabb6106716d0f83f86cbb510a9870da431fa0b53ac4ea6dde2a0b10d11e80c",
         intel: "9f081324bdeb674215a0b3fe94de60134c9545e9ee46ce8703a27d4b00d94005"

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
