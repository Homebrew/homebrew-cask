cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "27.1.2"
  sha256 arm:   "184634fb368189652225ee84d1f70f9a62c62fc8d80717aba5b84e5c5260e917",
         intel: "89342c18a400ec2fb91c6b4d9a98ef57ece764bd2e511abf2442996177393eef"

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
