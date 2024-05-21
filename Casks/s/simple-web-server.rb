cask "simple-web-server" do
  arch arm: "arm64", intel: "x64"

  version "1.2.11"
  sha256 arm:   "97d3d9bdd6a5c962b482eda6f8779a253f89f97077b72830814d2c16e92d37f8",
         intel: "8bbf8ba0e151a138ece75507f9495a771d948e3f125723524843324d10321635"

  url "https://github.com/terreng/simple-web-server/releases/download/v#{version}/Simple-Web-Server-macOS-#{version}-#{arch}.dmg",
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
