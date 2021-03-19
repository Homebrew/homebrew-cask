cask "easy-move-plus-resize" do
  version "1.4.1"
  sha256 "13ecf94c77b40ab18f158a9ada72d36cda6784b98fb61eb7930e1e4b774ae439"

  url "https://github.com/dmarcotte/easy-move-resize/releases/download/#{version}/Easy.Move+Resize.app.zip"
  appcast "https://github.com/dmarcotte/easy-move-resize/releases.atom"
  name "Easy Move+Resize"
  desc "Utility to support moving and resizing using a modifier key and mouse drag"
  homepage "https://github.com/dmarcotte/easy-move-resize"

  app "Easy Move+Resize.app"
end
