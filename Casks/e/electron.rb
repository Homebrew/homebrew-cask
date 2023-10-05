cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "26.3.0"
  sha256 arm:   "97cb2d00d06f331b4c028fa96373abdd7b5a71c2aa31b56cdf67d391f889f384",
         intel: "ea9434ad717f12771f8c508b664ed8d18179b397910ce81f4b6e21efce90b754"

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
