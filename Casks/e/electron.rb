cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "32.1.0"
  sha256 arm:   "d7350c92aa7c56cf6ece8d6a1a37da05c8b8ea8c56a287d41a0c1a6a489192f4",
         intel: "c9af14d23e135c4551d3fecf4d1a86f2833d7e159d9794d3971aba4219688c62"

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
