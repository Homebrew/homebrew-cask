cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "35.0.3"
  sha256 arm:   "1f4a5d6f43de4a39b45ff2d17e2165b5ac236480eec811e0ff8e8ac78094840c",
         intel: "469d6f90744127e9d53ec0116c0eca94cd6f6d8c74be70b7e7e8251f047f0205"

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
