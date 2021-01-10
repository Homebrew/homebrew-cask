cask "electron-fiddle" do
  version "0.19.0"

  if Hardware::CPU.intel?
    sha256 "83deb7f48349c09522d9d23458f0f38e87aa727f42e68842a36a270c64d1adf2"

    url "https://github.com/electron/fiddle/releases/download/v#{version}/Electron.Fiddle-darwin-x64-#{version}.zip",
        verified: "github.com/electron/fiddle/"
  else
    sha256 "2b12187b561a98ccb8fe191ab89531cf7d21f35021fd0807d5a06046f8cdf084"

    url "https://github.com/electron/fiddle/releases/download/v#{version}/Electron.Fiddle-darwin-arm64-#{version}.zip",
        verified: "github.com/electron/fiddle/"
  end

  appcast "https://github.com/electron/fiddle/releases.atom"
  name "Electron Fiddle"
  desc "Easiest way to get started with Electron"
  homepage "https://electron.atom.io/"

  app "Electron Fiddle.app"

  zap trash: [
    "~/Library/Application Support/Electron Fiddle",
    "~/Library/Caches/com.electron.fiddle*",
    "~/Library/Preferences/com.electron.fiddle*.plist",
  ]
end
