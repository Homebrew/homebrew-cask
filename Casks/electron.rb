cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "24.1.3"
  sha256 arm:   "f27f3f73ff7a2158b470282c81ab2743ac9e7663cf9e627118acf637a75466ff",
         intel: "0e2d3623153e1d78188005a11e20fb64e9dcee5df370ec000967c87b60c9593c"

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
  binary "#{appdir}/Electron.app/Contents/MacOS/Electron", target: "electron"

  zap trash: [
    "~/Library/Application Support/Electron",
    "~/Library/Caches/Electron",
    "~/Library/Preferences/com.github.electron.helper.plist",
    "~/Library/Preferences/com.github.electron.plist",
  ]
end
