cask "electron" do
  version "12.0.6"

  if Hardware::CPU.intel?
    sha256 "416348dad569d64d34396be6590ca15761dce91b77aab8219112464d55d00575"
    url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-x64.zip",
        verified: "github.com/electron/electron/"
  else
    sha256 "5f3cfa99ddf1923fd3acddd2796101d5d4a75063cdd764859cbbfa8dc7701dd"
    url "https://github.com/electron/electron/releases/download/v#{version}/electron-v#{version}-darwin-arm64.zip",
        verified: "github.com/electron/electron/"
  end

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
