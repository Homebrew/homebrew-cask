cask "simple-web-server" do
  arch arm: "-arm64"

  version "1.2.8"
  sha256 arm:   "d97b37141ba26a5cd29627dbbc0919df79072d42c421511db9687a4fd93e8c51",
         intel: "f183ffa747d20df49c3608352de6b4d6ca91e8ca748358db36df70380c6ca2f1"

  url "https://github.com/terreng/simple-web-server/releases/download/v#{version}/Simple-Web-Server-#{version}#{arch}.dmg",
      verified: "github.com/terreng/simple-web-server/"
  name "Simple Web Server"
  desc "Create local web servers"
  homepage "https://simplewebserver.org/"

  app "Simple Web Server.app"

  zap trash: [
    "~/Library/Application Support/Simple Web Server",
    "~/Library/Preferences/org.simplewebserver.simplewebserver.plist",
    "~/Library/Saved Application State/org.simplewebserver.simplewebserver.savedState",
  ]
end
