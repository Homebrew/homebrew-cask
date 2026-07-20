cask "itch" do
  arch arm: "arm64", intel: "amd64"

  version "26.15.0"
  sha256 arm:   "c00fc6c24970752be2deb838819f5ac61fada7a1849a8da1c86041adeb593c7c",
         intel: "f941e5f10fddf9d50760bc1985f4bb5a25efb705d4ff2766bd5d665e6fb91b85"

  url "https://github.com/itchio/itch/releases/download/v#{version}/itch-v#{version}-darwin-#{arch}.tar.gz",
      verified: "github.com/itchio/itch/"
  name "itch"
  desc "Game client for itch.io"
  homepage "https://itch.io/app"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on macos: :monterey

  app "itch.app"

  uninstall quit: "io.itch.mac"

  zap trash: [
    "~/Library/Application Support/itch",
    "~/Library/Preferences/io.itch.mac.helper.plist",
    "~/Library/Preferences/io.itch.mac.plist",
  ]
end
