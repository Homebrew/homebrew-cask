cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "27.0.4"
  sha256 arm:   "d43d26a36bbbe55fd9d2cbb66108bd6ebf341957c54443579073836473c6a1ba",
         intel: "0995873e9dfba6dff4ad8a8ac8c585124409471ee999068f05ff16fdd30ccf6f"

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
