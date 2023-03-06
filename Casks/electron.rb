cask "electron" do
  arch arm: "arm64", intel: "x64"

  version "23.1.2"
  sha256 arm:   "51277f4ac5797b5237259746874e0131528994df0ff121eb8b2f581c63c5daef",
         intel: "61faba835c36da14fafd553da38f07f97c1a9e4419d92804cb9a3ce0f0ef9a43"

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
  binary "#{appdir}/Electron.app/Contents/MacOS/Electron", target: "electron"

  zap trash: [
    "~/Library/Application Support/Electron",
    "~/Library/Caches/Electron",
    "~/Library/Preferences/com.github.electron.helper.plist",
    "~/Library/Preferences/com.github.electron.plist",
  ]
end
