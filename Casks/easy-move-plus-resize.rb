cask "easy-move-plus-resize" do
  version "1.6.0"
  sha256 "061481506559d7c8aea180767ccd7c11e3bb193feed7ee5a842721f1b265d500"

  url "https://github.com/dmarcotte/easy-move-resize/releases/download/#{version}/Easy.Move+Resize.app.zip"
  name "Easy Move+Resize"
  desc "Utility to support moving and resizing using a modifier key and mouse drag"
  homepage "https://github.com/dmarcotte/easy-move-resize"

  app "Easy Move+Resize.app"

  zap trash: "~/Library/Preferences/org.dmarcotte.Easy-Move-Resize.plist"
end
