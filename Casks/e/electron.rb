cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "30.0.3"
  sha256 arm:   "e082df9ed071ec82358a805c739ca602de083ea953bedab6af619db6537d0628",
         intel: "a4d8c8e161d53933fa3a104a0ca8fab3c914b3517114f209d8b927eedd6a7765"

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
