cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "28.1.3"
  sha256 arm:   "e02a28602f0554d03545e58de69b435d5daca53e5b8c0bb42d89e73d17be7238",
         intel: "19a34f774409cb89d690bd474af44500179c8273cc6a82d096825845d057ad9a"

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
