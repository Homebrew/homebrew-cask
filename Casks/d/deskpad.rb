cask "deskpad" do
  version "1.1"
  sha256 "6c9a3ee8b58249e5c2e9d0a9009d450cfc6132ed87c8b65ce93c97823c9cc0aa"

  url "https://github.com/Stengo/DeskPad/releases/download/v#{version}/DeskPad.app.zip"
  name "DeskPad"
  desc "Virtual monitor for screen sharing"
  homepage "https://github.com/Stengo/DeskPad"

  app "DeskPad.app"

  zap trash: [
    "~/Library/Application Scripts/com.stengo.DeskPad",
    "~/Library/Containers/com.stengo.DeskPad",
  ]
end
