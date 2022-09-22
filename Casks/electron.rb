cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "20.2.0"
  sha256 arm:   "0d4ea1a4f530b9bee78bd0a78430778a7e8982f78cf1d5ba8daac334a1312ce1",
         intel: "8cc8ec2823f561493e3ab22b9f73ea01af2f8eea4904af25d74ee91ee4cbfe2f"

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
