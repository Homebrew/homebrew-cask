cask "electron" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "16.0.7"

  if Hardware::CPU.intel?
    sha256 "e5c825d4cfc1dabd066986fa1cae3ee880f222b053c760b700b24899fb02d4db"
  else
    sha256 "9fa9dc44e5d71de7a999b3db07a583e0a04252747486c16955232eba498b259d"
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
