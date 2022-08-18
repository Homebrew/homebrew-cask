cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "20.0.3"

  on_intel do
    sha256 "6fd3ab4152a609e4923af5776ef8d2c3fb1d1842616706ac3acd1e78fc2cb2a9"
  end
  on_arm do
    sha256 "cc7f3caf673f17b887d803114494cb15babac1574e246780070cda5d79138004"
  end

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
