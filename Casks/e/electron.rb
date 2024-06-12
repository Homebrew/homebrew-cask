cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "31.0.1"
  sha256 arm:   "68f90a6c6f1f8f616ee65f820f7c95394782c0e34775f9a81a6a6c628134dc3f",
         intel: "7bb127f2c7d900ba15d40e2f21462f546e4d7a4461add8fd2ac7164df836e191"

  url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-#{arch}.zip",
      verified: "github.com/electron/electron/"
  name "Electron"
  desc "Build desktop apps with JavaScript, HTML, and CSS"
  homepage "https://electronjs.org/"

  livecheck do
    url :url
    strategy :github_latest
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
