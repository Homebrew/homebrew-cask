cask "electron" do
  version "15.1.1"

  if Hardware::CPU.intel?
    sha256 "ddfab707063a79f25a95983abeba6ef4e581d53b6f26e7667fde4fd11c5547b0"
    url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip",
        verified: "github.com/electron/electron/"
  else
    sha256 "8db2ff70446e081311bb1d5cc8a13fd66e7143046747f87cdb07b139d973bb89"
    url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-arm64.zip",
        verified: "github.com/electron/electron/"
  end

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
