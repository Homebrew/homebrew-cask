cask "eul" do
  version "1.5.14"
  sha256 "ebdd5a7032373f8477831b3c25c318c0c87290f95a969d405ee603cdbf36da84"

  url "https://github.com/gao-sun/eul/releases/download/v#{version}/eul.app.zip"
  name "eul"
  desc "Status monitoring"
  homepage "https://github.com/gao-sun/eul"

  depends_on macos: ">= :catalina"

  app "eul.app"

  zap trash: "~/Library/Preferences/com.gaosun.eul.plist"
end
