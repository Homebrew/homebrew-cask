cask "easy-move+resize" do
  version "1.8.1"
  sha256 "34f48f465017d2aed58fb3c681aa0d132d0bf121f744f6864bd9819694e0ff76"

  url "https://github.com/dmarcotte/easy-move-resize/releases/download/#{version}/EasyMoveResize-signed.zip"
  name "Easy Move+Resize"
  desc "Utility to support moving and resizing using a modifier key and mouse drag"
  homepage "https://github.com/dmarcotte/easy-move-resize"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Easy Move+Resize.app"

  zap trash: "~/Library/Preferences/org.dmarcotte.Easy-Move-Resize.plist"
end
