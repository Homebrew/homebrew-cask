cask "electron-fiddle" do
  arch arm: "arm64", intel: "x64"

  version "0.39.0"
  sha256 arm:          "98206b1b49729c0bb011c3302f06bc84c1b79bd8805c908f43a8dc196eaf7fda",
         intel:        "97fc006be2e6431b58c5dbe35c888eda30ad37c549ba63ea6ebe279512dce302",
         arm64_linux:  "113bb3e40c1d12d16547677fff1d727dde9e313c570051dc14f8a21817af36e2",
         x86_64_linux: "5eb86e9536a23ed4fbb48bdf56f326c8f1c5630eec9108b6907d509671628a20"

  on_macos do
    url "https://github.com/electron/fiddle/releases/download/v#{version}/Electron.Fiddle-darwin-#{arch}-#{version}.zip",
        verified: "github.com/electron/fiddle/"

    depends_on macos: :monterey

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
  on_linux do
    url "https://github.com/electron/fiddle/releases/download/v#{version}/Electron.Fiddle-#{version}-#{arch}.AppImage",
        verified: "github.com/electron/fiddle/"

    app_image "Electron.Fiddle-#{version}-#{arch}.AppImage", target: "Electron Fiddle.AppImage"
  end

  name "Electron Fiddle"
  desc "Create and play with small Electron experiments"
  homepage "https://www.electronjs.org/fiddle"

  livecheck do
    url :homepage
    regex(/href=.*?Electron[._-]Fiddle[._-]darwin[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end
end
