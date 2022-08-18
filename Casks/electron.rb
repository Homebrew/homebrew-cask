cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "20.0.2"

  on_intel do
    sha256 "2b7f0b77ffa49efca1c50de071d1647bba0838aea34a028edaef9cf43ef6ab4c"
  end
  on_arm do
    sha256 "c23b791936391d9a31d5b0a2c48e1cd6b5b42526dcd61a73162a90396095c08f"
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
