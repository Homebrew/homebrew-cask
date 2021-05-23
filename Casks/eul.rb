cask "eul" do
  version "1.5.18"
  sha256 "951c17973150c44d67dec533794e5b349e504db69d5e58ed0e3526312ad86019"

  url "https://github.com/gao-sun/eul/releases/download/v#{version}/eul.app.zip"
  name "eul"
  desc "Status monitoring"
  homepage "https://github.com/gao-sun/eul"

  depends_on macos: ">= :catalina"

  app "eul.app"

  zap trash: "~/Library/Preferences/com.gaosun.eul.plist"
end
