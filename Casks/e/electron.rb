cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "29.1.2"
  sha256 arm:   "bd84c909da4ef76444e3eba2554dbd6e3b88dd6b28539560c213906c430e36d8",
         intel: "7a91637031850ff14bcfe8669bcdd3d9881ac7fec63e3770cf529e8f01b99b23"

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
