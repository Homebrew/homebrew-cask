cask "decrediton" do
  arch arm: "arm64", intel: "amd64"

  version "2.1.5"
  sha256 arm:   "aeb54e1048cc714742939d83deb14ceea1b3bad603e01712d1799088408124b4",
         intel: "5b0f76e719031fdc3d6f9a6988b44c0303ffacf41c9fd7da5769969b63f0ca63"

  url "https://github.com/decred/decred-binaries/releases/download/v#{version}/decrediton-darwin-#{arch}-v#{version}.dmg"
  name "Decrediton"
  desc "GUI for the Decred wallet"
  homepage "https://github.com/decred/decrediton"

  depends_on macos: ">= :big_sur"

  app "decrediton.app"

  zap trash: [
    "~/Library/Application Support/decrediton",
    "~/Library/Preferences/com.Electron.Decrediton.plist",
  ]
end
