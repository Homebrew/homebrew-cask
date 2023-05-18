cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "24.3.1"
  sha256 arm:   "b3db5051d0bdf1174b5fd686f4e14558992d0403f9255ecaac21395ad7a4c881",
         intel: "4b6971c083ef8def3e6e835757f0bc395bb6e03fa3d93ae12b6d6aa55773c897"

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
