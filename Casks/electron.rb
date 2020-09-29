cask "electron" do
  version "10.1.3"
  sha256 "7ad9c81ce05307d9f17b68ad38515d0d1e8a1ae81727b5a4edbc5c7a7f4503d9"

  # github.com/electron/electron/ was verified as official when first introduced to the cask
  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip"
  appcast "https://www.electronjs.org/releases/stable"
  name "Electron"
  desc "Build cross-platform desktop apps with JavaScript, HTML, and CSS"
  homepage "https://electronjs.org/"

  app "Electron.app"

  zap trash: [
    "~/Library/Application Support/Electron",
    "~/Library/Caches/Electron",
    "~/Library/Preferences/com.github.electron.helper.plist",
    "~/Library/Preferences/com.github.electron.plist",
  ]
end
