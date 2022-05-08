cask "electron" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "18.2.1"

  if Hardware::CPU.intel?
    sha256 "537d2c02962ad25a666bd76636e222723a351b27a442833e1ad53e33c7c91fbe"
  else
    sha256 "05fe17df84f6c85c7a083ee16beb0bddca1d5dee27dca0437bc9bf719401ed68"
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
