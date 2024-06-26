cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "31.1.0"
  sha256 arm:   "961b5ad80399f6e584e8ea94c9dfff2767232f0946bbd07f645a92f13da7aba4",
         intel: "b74b1da1c141468e74a2914e13e00e3d6a80b9b7d75345b2d7b2a3b285922623"

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
