cask "electron" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "18.0.4"

  if Hardware::CPU.intel?
    sha256 "7077834b6235fe8825620eea88fbd9de9c5c11001abbbe6b2b9f4357a791d4b4"
  else
    sha256 "19b47adefcd730bbdbef7d749b39df8a8ae4905883eafb5e2bb3154fe4b02eb6"
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
