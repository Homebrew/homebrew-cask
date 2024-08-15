cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "31.4.0"
  sha256 arm:   "4cd04f75e97f6cdfee1d166c7756b9a3c7341e51a7b12255c37bd46fa5a45da5",
         intel: "e177e9846bfe63eefea3ecd6a889e9865e1fba21b93179a0cde08bd7c94796ee"

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
