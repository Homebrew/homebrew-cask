cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "31.3.0"
  sha256 arm:   "185118e54a0929c29bf28dace4d025a6a5019f58e7f0ed6bf4a48a8ac8a3f216",
         intel: "3cffb20969e2b9ed4048458aabb5380e5ad89f5cc13432d9b28b547d85c62111"

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
