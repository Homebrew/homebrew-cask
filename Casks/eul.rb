cask "eul" do
  version "1.5.6"
  sha256 "2e455b49f2c45a3c947b8a1fe4d81f8ec1dafd5b151a9a1b3d694bbe049c2a85"

  url "https://github.com/gao-sun/eul/releases/download/v#{version}/eul.app.zip"
  appcast "https://github.com/gao-sun/eul/releases.atom"
  name "eul"
  desc "Status monitoring"
  homepage "https://github.com/gao-sun/eul"

  depends_on macos: ">= :catalina"

  app "eul.app"

  zap trash: "~/Library/Preferences/com.gaosun.eul.plist"
end
