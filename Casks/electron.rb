cask "electron" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "18.0.0"

  if Hardware::CPU.intel?
    sha256 "a065a24cf8a10e31afa28600bb9c2e7060f7826d4ebaed65076a969bd18a0e0c"
  else
    sha256 "2798464196f28ae601b6ad2e4a7811b99f37772c440e5031fceb5f3d066a555c"
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
