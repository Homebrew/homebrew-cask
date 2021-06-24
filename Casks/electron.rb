cask "electron" do
  version "13.1.4"

  if Hardware::CPU.intel?
    sha256 "3d9980f8062766be3cfcfd54b9fd9f469993df06d538a2324c4879eae1284c84"
    url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip",
        verified: "github.com/electron/electron/"
  else
    sha256 "e961b7d361c378e4adab7903211ac7200684cb91044c3b300acde04ca24d0468"
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
