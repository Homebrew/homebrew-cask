cask "eul" do
  version "1.4.3"
  sha256 "1767a2c3dba8758ff58d37c40ad9646cf5c6ed91499bff4be66db26d0f1e0ff8"

  url "https://github.com/gao-sun/eul/releases/download/v#{version}/eul.app.zip"
  appcast "https://github.com/gao-sun/eul/releases.atom"
  name "eul"
  desc "Status monitoring"
  homepage "https://github.com/gao-sun/eul"

  depends_on macos: ">= :catalina"

  app "eul.app"

  zap trash: "~/Library/Preferences/com.gaosun.eul.plist"
end
