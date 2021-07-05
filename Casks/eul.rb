cask "eul" do
  version "1.6.0"
  sha256 "2c8ef730ace635d5e661c3c01c6f5b38e541f06cb000934437616a72b200bd3d"

  url "https://github.com/gao-sun/eul/releases/download/v#{version}/eul.app.zip"
  name "eul"
  desc "Status monitoring"
  homepage "https://github.com/gao-sun/eul"

  depends_on macos: ">= :catalina"

  app "eul.app"

  zap trash: "~/Library/Preferences/com.gaosun.eul.plist"
end
