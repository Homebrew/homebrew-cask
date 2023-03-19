cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "23.1.4"
  sha256 arm:   "80233ff1b5e5bbae9cbb2e0d2e15af26e4ea9b5571d77f547951d043f6aaaaf3",
         intel: "442947513094387e0457d56beea37849e33ac8ec736b3c3d9e3350ad25c2d30c"

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
  binary "#{appdir}/Electron.app/Contents/MacOS/Electron", target: "electron"

  zap trash: [
    "~/Library/Application Support/Electron",
    "~/Library/Caches/Electron",
    "~/Library/Preferences/com.github.electron.helper.plist",
    "~/Library/Preferences/com.github.electron.plist",
  ]
end
