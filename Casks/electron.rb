cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "21.2.2"
  sha256 arm:   "9cb71fd42c146e6ad503c2c99e50e800e7959a33644fba76ff4d7af5675f4e1b",
         intel: "d958fdce151782b925c3921b758dc20f7dd9fe59b8cc3fcb6c07d561d5733510"

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

  zap trash: [
    "~/Library/Application Support/Electron",
    "~/Library/Caches/Electron",
    "~/Library/Preferences/com.github.electron.helper.plist",
    "~/Library/Preferences/com.github.electron.plist",
  ]
end
