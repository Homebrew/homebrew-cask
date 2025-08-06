cask "simple-web-server" do
  arch arm: "arm64", intel: "x64"

  version "1.2.15"
  sha256 arm:   "9ab97199053d56d67f227dcd79f25d2844dbee99dabc50eef33fe50607f184f5",
         intel: "705e080ddbb47c028e077ef1c22af675b2b4e75b31520dbc4adadcc66fc73175"

  url "https://github.com/terreng/simple-web-server/releases/download/v#{version}/Simple-Web-Server-macOS-#{version}-#{arch}.dmg",
      verified: "github.com/terreng/simple-web-server/"
  name "Simple Web Server"
  desc "Create local web servers"
  homepage "https://simplewebserver.org/"

  depends_on macos: ">= :big_sur"

  app "Simple Web Server.app"

  zap trash: [
    "~/Library/Application Support/Simple Web Server",
    "~/Library/Preferences/org.simplewebserver.simplewebserver.plist",
    "~/Library/Saved Application State/org.simplewebserver.simplewebserver.savedState",
  ]
end
