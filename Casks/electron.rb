cask "electron" do
  version "9.2.1"
  sha256 "9a790122136d44a6a6f491ef6508c64ab2fc6b17477fe60665fe40ead1fd18d9"

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
