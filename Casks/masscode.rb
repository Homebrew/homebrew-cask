cask "masscode" do
  version "1.3.0"
  sha256 "64fb6b176b5fad02e2b6fcec3abb1d350fa2831b2ba1dd214db5a874dfe9f23e"

  url "https://github.com/antonreshetov/massCode/releases/download/v#{version}/massCode-#{version}.dmg",
      verified: "github.com/antonreshetov/massCode/"
  appcast "https://github.com/antonreshetov/massCode/releases.atom"
  name "massCode"
  desc "Open-source code snippets manager for developers"
  homepage "https://masscode.io/"

  app "massCode.app"
end
