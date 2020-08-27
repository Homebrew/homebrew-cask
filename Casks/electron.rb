cask "electron" do
  version "10.0.0"
  sha256 "0c6ac8ea684931a66f33219d8de47ab3694d0b89e53f0deacaa6404e35a6555b"

  # github.com/electron/electron/ was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast "https://github.com/electron/electron/releases.atom"
  name "Electron"
  homepage "https://electronjs.org/"

  app "Electron.app"

  zap trash: [
    "~/Library/Application Support/Electron",
    "~/Library/Caches/Electron",
    "~/Library/Preferences/com.github.electron.helper.plist",
    "~/Library/Preferences/com.github.electron.plist",
  ]
end
