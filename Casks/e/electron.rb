cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "27.1.3"
  sha256 arm:   "ae44b0d094c53e233f5f69db13fe83b1db5e6434a7688fe72550f30f00bde40c",
         intel: "1f390ed58536a6ca35a65f2d89dabfbec7710a63c0037e7b6b5b93ddec830e4a"

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
