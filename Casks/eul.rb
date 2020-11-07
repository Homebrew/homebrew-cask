cask "eul" do
  version "1.4"
  sha256 "62d4c47ba366da8d957cfd93fe8791bd8b153decc552a8735cb814fc652ba23d"

  url "https://github.com/gao-sun/eul/releases/download/v#{version}/eul.app.zip"
  appcast "https://github.com/gao-sun/eul/releases.atom"
  name "eul"
  desc "Status monitoring"
  homepage "https://github.com/gao-sun/eul"

  depends_on macos: ">= :catalina"

  app "eul.app"

  zap trash: "~/Library/Preferences/com.gaosun.eul.plist"
end
