cask "eul" do
  version "1.5.5"
  sha256 "f5e109e8badab22e894f28292406c8f35b155fee5374cdd7cfaf235251359d8e"

  url "https://github.com/gao-sun/eul/releases/download/v#{version}/eul.app.zip"
  appcast "https://github.com/gao-sun/eul/releases.atom"
  name "eul"
  desc "Status monitoring"
  homepage "https://github.com/gao-sun/eul"

  depends_on macos: ">= :catalina"

  app "eul.app"

  zap trash: "~/Library/Preferences/com.gaosun.eul.plist"
end
