cask "glyphfinder" do
  version "1.4.1"
  sha256 "5d97ce0a1a95d58bd587c65b5926026cd9c6fd374f2af09a7d1885bc5802ceda"

  url "https://ueber.fra1.cdn.digitaloceanspaces.com/glyphfinder/mac/Glyphfinder-#{version}-mac.dmg",
      verified: "ueber.fra1.cdn.digitaloceanspaces.com/glyphfinder/"
  appcast "https://www.glyphfinder.com/"
  name "Glyphfinder"
  homepage "https://www.glyphfinder.com/"

  app "Glyphfinder.app"
end
