cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "30.0.1"
  sha256 arm:   "cc05081bbe532c853ceadd5b33ab363653b1e4df4d3b93c297a6a4fa8b4c1af1",
         intel: "2c87dc4df770bc84042fbb5de9f045dbfdc6aef8cfbe04781afafaf5c91fc5bf"

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
