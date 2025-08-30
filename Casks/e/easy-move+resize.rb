cask "easy-move+resize" do
  version "1.7.0"
  sha256 "5c7bab623ae11bfa1daa48535495f97678532e4d66bcd3920ebe1c303228c53d"

  url "https://github.com/dmarcotte/easy-move-resize/releases/download/#{version}/Easy.Move+Resize.app.zip"
  name "Easy Move+Resize"
  desc "Utility to support moving and resizing using a modifier key and mouse drag"
  homepage "https://github.com/dmarcotte/easy-move-resize"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :high_sierra"

  app "Easy Move+Resize.app"

  zap trash: "~/Library/Preferences/org.dmarcotte.Easy-Move-Resize.plist"
end
