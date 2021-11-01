cask "electron" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "15.3.0"

  if Hardware::CPU.intel?
    sha256 "667da0d56bab968d28c41c1f53b901fb685e56d1f56faf33912a240a0397bab5"
  else
    sha256 "9cf5caafc7cbf0e91483e24d5a696b81618d293a5eccd4d122c57baaab88724c"
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
