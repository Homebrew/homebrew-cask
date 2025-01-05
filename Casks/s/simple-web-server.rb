cask "simple-web-server" do
  arch arm: "arm64", intel: "x64"

  version "1.2.14"
  sha256 arm:   "534b0b1d896b85631443f8ab7779f25fc8560b8c1c16ee51b583d93402570598",
         intel: "b2487cc9cfdd15d2382ffc963383f046d6975d011afca27924b6170a4da8e45b"

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
