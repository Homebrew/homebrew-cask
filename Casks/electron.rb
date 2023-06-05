cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "25.0.1"
  sha256 arm:   "6a26d58eb5b37ce9852668e59330ca54bf6226e8bb1172e179bb9ddb592e4b8c",
         intel: "f4a51adf95b37bfe39320ab7f8025b148a6b6b7140bd96101788a62b77c13d8c"

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
