cask "easy-move-plus-resize" do
  version "1.3.0"
  sha256 "da8c7c8e365c348f06c80cdc075271d85d16a954bf5f9494786dcb8251bc27b6"

  url "https://github.com/dmarcotte/easy-move-resize/releases/download/#{version}/Easy.Move.Resize.app.zip"
  appcast "https://github.com/dmarcotte/easy-move-resize/releases.atom"
  name "Easy Move+Resize"
  desc "Utility to support moving and resizing using a modifier key and mouse drag"
  homepage "https://github.com/dmarcotte/easy-move-resize"

  app "easy-move-resize/Easy Move+Resize.app"
end
