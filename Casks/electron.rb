cask "electron" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "17.0.1"

  if Hardware::CPU.intel?
    sha256 "d270858938e2f0e68479d91384e6f4d01be1d4e22b305dc2023ecd1a5e113d17"
  else
    sha256 "aecf14a88ede956e93fee5b48b773ad4d8d6605424c9d69a45950b673c89f8ca"
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
