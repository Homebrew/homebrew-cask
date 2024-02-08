cask "simple-web-server" do
  arch arm: "-arm64"

  version "1.2.9"
  sha256 arm:   "268bdf33bc10e1e47262f9104879cc46238fce0a670f4365f2c11a1fc244f402",
         intel: "fb2800f3375d3581e875557269047daf74733561735ed7bf95ab3e66c33adcfa"

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
