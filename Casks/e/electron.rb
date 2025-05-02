cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "36.1.0"
  sha256 arm:   "5f38c1939c76a6299ac68a9b5b56deea8d81f4ac02f5855a59a7aad4c3c86eef",
         intel: "86eb97a6b4f800efc82910cf366e1e1c93fbc003dcb55aad5f78a0af4f0b826e"

  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-#{arch}.zip",
      verified: "github.com/electron/electron/"
  name "Electron"
  desc "Build desktop apps with JavaScript, HTML, and CSS"
  homepage "https://electronjs.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Electron.app"
  binary "#{appdir}/Electron.app/Contents/MacOS/Electron", target: "electron"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.electron.sfl*",
    "~/Library/Application Support/Electron",
    "~/Library/Caches/Electron",
    "~/Library/Preferences/com.github.electron.helper.plist",
    "~/Library/Preferences/com.github.electron.plist",
    "~/Library/Saved Application State/com.github.Electron.savedState",
  ]
end
