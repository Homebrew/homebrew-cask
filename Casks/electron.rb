cask "electron" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "17.0.0"

  if Hardware::CPU.intel?
    sha256 "c35d81af3a3f156059a53436d7874a46770cbf6e4e5087f7caee269e66abb636"
  else
    sha256 "7dc5eabc7e582a031d5bd079eeadc9582f5605446085b4cbd1dc7e7c9e978c45"
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
