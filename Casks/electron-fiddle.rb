cask "electron-fiddle" do
  version "0.23.1"

  if Hardware::CPU.intel?
    sha256 "2b3caec785c35000fd9a18f366a0eb29e2d012e8cb368be6515da9400748300f"

    url "https://github.com/electron/fiddle/releases/download/v#{version}/Electron.Fiddle-darwin-x64-#{version}.zip",
        verified: "github.com/electron/fiddle/"
  else
    sha256 "f7a940a7fd1dd48c35c85584e44a65520fed18357747569ea8ea51f25c485366"

    url "https://github.com/electron/fiddle/releases/download/v#{version}/Electron.Fiddle-darwin-arm64-#{version}.zip",
        verified: "github.com/electron/fiddle/"
  end

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
