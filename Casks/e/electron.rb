cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "33.0.2"
  sha256 arm:   "2d31f140b1a6cfa6efb509e644dee5830601e4d73d47539a8af20d57e8ae7b12",
         intel: "4bf99f30f124b447ef3b178e5ba0cdfe1faefa6a725bcde76a35eb26a50d4333"

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
