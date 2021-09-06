cask "eul" do
  version "1.6.2"
  sha256 "09b036f1e934472d55a0417e2a3ce736559caf81a38537c94ab2c6331f258851"

  url "https://github.com/gao-sun/eul/releases/download/v#{version}/eul.app.zip"
  name "eul"
  desc "Status monitoring"
  homepage "https://github.com/gao-sun/eul"

  depends_on macos: ">= :catalina"

  app "eul.app"

  zap trash: "~/Library/Preferences/com.gaosun.eul.plist"
end
