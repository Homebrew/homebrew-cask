cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "21.3.0"
  sha256 arm:   "5f8706fe1a18ca96eae5b4994793b37269808b1a2f5aa22933d76151d0d38056",
         intel: "96091dfd616e7194ce323bbdf0f8fdeb60e3d7f6d19e226bb6cea416f3d7c556"

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
