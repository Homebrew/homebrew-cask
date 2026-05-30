cask "openpencil" do
  arch arm: "aarch64", intel: "x64"

  version "0.13.1"
  sha256 arm:   "71821a58983d94e81455f7b5dd57c6832bceb0d77a880972ef45e67e9cea500e",
         intel: "0a6dfcc0d719d48e97c84111172b05c4a474632d220063db87d070fda482c4f1"

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
