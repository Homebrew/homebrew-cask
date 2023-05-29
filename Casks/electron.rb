cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "25.0.0"
  sha256 arm:   "5789d16d7b0474295afe7aff97f7b09d7fd8edc00664c64cd73a2accc74c5583",
         intel: "90a38c24e50bf9b8945151586c9b974d29706ee5aa240285027b0930a54ad855"

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
