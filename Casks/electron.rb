cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "24.4.0"
  sha256 arm:   "49346a2e32b9349cfb539e6a7029797d55d2a81bd48ca145c8103ce3a7611999",
         intel: "5c570b4ceca9fc3aefa7c6445b734590f466eff85aacabdf398913239a11fcac"

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
