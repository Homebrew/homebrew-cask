cask "eul" do
  version "1.3.1"
  sha256 "626997cd1683b6b8ecba7859f3523dd76f6d965644b7b258e4d500819649f278"

  url "https://github.com/gao-sun/eul/releases/download/v#{version}/eul.app.zip"
  appcast "https://github.com/gao-sun/eul/releases.atom"
  name "eul"
  desc "Status monitoring"
  homepage "https://github.com/gao-sun/eul"

  app "eul.app"

  zap trash: "~/Library/Preferences/com.gaosun.eul.plist"
end
