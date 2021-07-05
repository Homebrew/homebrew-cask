cask "easy-move-plus-resize" do
  version "1.4.2"
  sha256 "d44077b4065abba210c37fd32051a88fc217730309d7507096aac27cc2d9a9fb"

  url "https://github.com/dmarcotte/easy-move-resize/releases/download/#{version}/Easy.Move+Resize.app.zip"
  name "Easy Move+Resize"
  desc "Utility to support moving and resizing using a modifier key and mouse drag"
  homepage "https://github.com/dmarcotte/easy-move-resize"

  app "Easy Move+Resize.app"
end
