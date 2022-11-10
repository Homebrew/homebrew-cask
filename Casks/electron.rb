cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "21.2.3"
  sha256 arm:   "c64d4dbe88df370bc6f9d86f30f63da10f3a57f00117c58b83dbbbaeab542470",
         intel: "c2ad399f4325672806774163282ff4b611402b47f288029c5d3d772489eabd89"

  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-#{arch}.zip",
      verified: "github.com/electron/electron/"
  name "Electron"
  desc "Build desktop apps with JavaScript, HTML, and CSS"
  homepage "https://electronjs.org/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  app "Electron.app"

  zap trash: [
    "~/Library/Application Support/Electron",
    "~/Library/Caches/Electron",
    "~/Library/Preferences/com.github.electron.helper.plist",
    "~/Library/Preferences/com.github.electron.plist",
  ]
end
