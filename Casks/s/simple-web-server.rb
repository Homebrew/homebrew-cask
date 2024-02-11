cask "simple-web-server" do
  arch arm: "arm64", intel: "x64"

  version "1.2.10"
  sha256 arm:   "da0968ca40e144b555ffc895f88609fc470c6bbec9ee8b0dd1cedff59f065aa3",
         intel: "13fdd6f5d6e7725459487060628c7de47f90ac809eb8ba7b85d9f4c720c5a19c"

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
