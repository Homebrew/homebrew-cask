cask "notational-velocity" do
  version "2.5.2"
  sha256 "f84ebcef767ad6191850902b4576d6b8136e059ccc61b22874cf372c8b8e7f8b"

  url "https://github.com/scrod/nv/releases/download/v#{version}/NotationalVelocity-#{version}.zip"
  name "Notational Velocity"
  desc "Store and retrieve notes"
  homepage "https://notational.net/"

  livecheck do
    url "https://notational.net/nvupdates.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on :macos

  app "Notational Velocity.app"

  zap trash: "~/Library/Preferences/net.notational.velocity.plist"
end
