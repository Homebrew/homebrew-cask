cask "easy-move-plus-resize" do
  version "1.4.0"
  sha256 "b68ec37dd8243f20a79d4c80b66bd1fad047074e23f05b22720e2088c4ac6ed1"

  url "https://github.com/dmarcotte/easy-move-resize/releases/download/#{version}/Easy.Move+Resize.app.zip"
  appcast "https://github.com/dmarcotte/easy-move-resize/releases.atom"
  name "Easy Move+Resize"
  desc "Utility to support moving and resizing using a modifier key and mouse drag"
  homepage "https://github.com/dmarcotte/easy-move-resize"

  app "Easy Move+Resize.app"
end
