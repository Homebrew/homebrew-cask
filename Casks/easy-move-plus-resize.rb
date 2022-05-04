cask "easy-move-plus-resize" do
  version "1.5.0"
  sha256 "94e83f27c3b9c0ffdecc96c7f04d34cc7fb95e4e71c7b5f19c4faae83b2e91eb"

  url "https://github.com/dmarcotte/easy-move-resize/releases/download/#{version}/Easy.Move+Resize.app.zip"
  name "Easy Move+Resize"
  desc "Utility to support moving and resizing using a modifier key and mouse drag"
  homepage "https://github.com/dmarcotte/easy-move-resize"

  app "Easy Move+Resize.app"
end
