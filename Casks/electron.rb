cask "electron" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "19.0.9"

  if Hardware::CPU.intel?
    sha256 "db40db62ab53d4d30efe707ebffa2487d266289cd8ad3b1eb215737ef22bbd99"
  else
    sha256 "a3ad17146810d8fb3b2ddf1007f5dfdc731f83fb69f91232bbb7a2424f04095a"
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
