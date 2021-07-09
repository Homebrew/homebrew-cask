cask "eul" do
  version "1.6.1"
  sha256 "8a31c45926f9f42dd82d89b2d6210c5b65dd17c6ac38fa3811aefa3b5dc47c3d"

  url "https://github.com/gao-sun/eul/releases/download/v#{version}/eul.app.zip"
  name "eul"
  desc "Status monitoring"
  homepage "https://github.com/gao-sun/eul"

  depends_on macos: ">= :catalina"

  app "eul.app"

  zap trash: "~/Library/Preferences/com.gaosun.eul.plist"
end
