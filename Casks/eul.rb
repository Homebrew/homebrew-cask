cask "eul" do
  version "1.5.17"
  sha256 "31e00060a59fc5363e4e1beee25bd2fe133b214fc753daedf996ddda3a2c6ef0"

  url "https://github.com/gao-sun/eul/releases/download/v#{version}/eul.app.zip"
  name "eul"
  desc "Status monitoring"
  homepage "https://github.com/gao-sun/eul"

  depends_on macos: ">= :catalina"

  app "eul.app"

  zap trash: "~/Library/Preferences/com.gaosun.eul.plist"
end
