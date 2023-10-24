cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "27.0.2"
  sha256 arm:   "b589d51e4e54698efa0403c47ac6f544115eb354858d9117b1728fb0c8202af7",
         intel: "f6c7bdadf7b5329b1c22fa1c9da43bd21f808600a9e6287a3b31d16763fd40af"

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
