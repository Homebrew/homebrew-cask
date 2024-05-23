cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "30.0.7"
  sha256 arm:   "9fd8ba7e42da3f321fa09f5b5769c8b2d1bfb20c8f642e0963fe829eb840e47a",
         intel: "b84edc359b585e0deb7c5a91f8c8386b1597d6899e73c51ece32c2f574cb4971"

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
