cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "27.0.3"
  sha256 arm:   "a6f536ef69b73c7088e368e581ec0d3979fe1ba8f7e321f4a5d16b6c6aba294e",
         intel: "1cdd1ff09d2bed11ac910ec2be6b4f930010b6404c9f7fa6c5aa47270055ce15"

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
