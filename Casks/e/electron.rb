cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "27.0.0"
  sha256 arm:   "2fc319c53f6dc61e2e424d46712caead7022b5124c9674f3b15b45c556dd0623",
         intel: "8c2b944f3949265526410704ecd925c85ebb20d61f5c739081336bd1d29bd083"

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
