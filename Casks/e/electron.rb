cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "30.0.5"
  sha256 arm:   "f65a973234abed3ae6e94196e409e70bf182d772d192977abb2ade587570f6b6",
         intel: "1dc966dc3a78579755e60b971eb3bb393d0f03131020e0d4bda31cfa6e0fa9c4"

  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-#{arch}.zip",
      verified: "github.com/electron/electron/"
  name "Electron"
  desc "Build desktop apps with JavaScript, HTML, and CSS"
  homepage "https://electronjs.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Electron.app"
  binary "#{appdir}/Electron.app/Contents/MacOS/Electron", target: "electron"

  zap trash: [
    "~/Library/Application Support/Electron",
    "~/Library/Caches/Electron",
    "~/Library/Preferences/com.github.electron.helper.plist",
    "~/Library/Preferences/com.github.electron.plist",
  ]
end
