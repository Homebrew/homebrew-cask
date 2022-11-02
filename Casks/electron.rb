cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "21.2.1"
  sha256 arm:   "2ac1bde2bbb4a265422e00eb5e1d81302b0c349b2db6e7bf1ee6f236a68b3d53",
         intel: "f20c0be6cb51bad1bb591ec1116be622e631cbc89876b2258c55579bbe52de30"

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
