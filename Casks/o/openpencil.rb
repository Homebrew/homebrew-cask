cask "openpencil" do
  arch arm: "aarch64", intel: "x64"

  version "0.13.2"
  sha256 arm:   "943a366b699da340a0358ab6bec4b6fcc151869169d97dc41dbbddc21eb282f2",
         intel: "5cc8990b434fe29b9ce84394037603b3b696100715fa815d8c5243a63f967553"

  url "https://github.com/open-pencil/open-pencil/releases/download/v#{version}/OpenPencil_#{arch}.app.tar.gz",
      verified: "github.com/open-pencil/open-pencil/"
  name "OpenPencil"
  desc "Open-source design editor compatible with Figma"
  homepage "https://openpencil.dev/"

  auto_updates true
  depends_on :macos

  app "OpenPencil.app"

  zap trash: [
    "~/Library/Application Support/net.dannote.open-pencil",
    "~/Library/Caches/net.dannote.open-pencil",
    "~/Library/Preferences/net.dannote.open-pencil.plist",
    "~/Library/Saved Application State/net.dannote.open-pencil.savedState",
  ]
end
