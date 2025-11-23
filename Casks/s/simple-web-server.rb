cask "simple-web-server" do
  arch arm: "arm64", intel: "x64"

  version "1.2.17"
  sha256 arm:   "66f8252715f9942238c6fe850ea02abbc7f741efb2bc4e9f25e7c8ee09590eac",
         intel: "c601435f983f65a261da0f7f4500fd87ce90e0bd28cba36afd50f0a30571b320"

  url "https://github.com/terreng/simple-web-server/releases/download/v#{version}/Simple-Web-Server-macOS-#{version}-#{arch}.dmg",
      verified: "github.com/terreng/simple-web-server/"
  name "Simple Web Server"
  desc "Create local web servers"
  homepage "https://simplewebserver.org/"

  depends_on macos: ">= :monterey"

  app "Simple Web Server.app"

  zap trash: [
    "~/Library/Application Support/Simple Web Server",
    "~/Library/Preferences/org.simplewebserver.simplewebserver.plist",
    "~/Library/Saved Application State/org.simplewebserver.simplewebserver.savedState",
  ]
end
