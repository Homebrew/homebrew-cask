cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "26.2.4"
  sha256 arm:   "dda224e19ff2d2c99624e1da7d20fa24b92a34b49fac8dcef15542e183bc89c6",
         intel: "a1e33c66a13913306e80812a9051ce7e5632d7cc13ff76910cc8daa791580589"

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
