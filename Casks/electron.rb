cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "21.0.1"
  sha256 arm:   "0027d3ffe795e44a959e23f0e9e91452e742ea697fc1141eb93f31b840c3a26f",
         intel: "f1ee563ac2b2defbf856e444c0f8fdbd7afae1a81dc0a29ebb190e2f68f48efd"

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
