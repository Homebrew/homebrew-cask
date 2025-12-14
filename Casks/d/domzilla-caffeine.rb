cask "domzilla-caffeine" do
  version "1.6.2"
  sha256 "d3dbd8a32eac95e9c01c2ee1282f7c770dabf5726319212f248b7eaa9de173c1"

  url "https://dr-caffeine-mac.s3.amazonaws.com/Caffeine_#{version}.zip",
      verified: "dr-caffeine-mac.s3.amazonaws.com/"
  name "Caffeine"
  desc "Utility that prevents the system from going to sleep"
  homepage "https://www.caffeine-app.net/"

  livecheck do
    url "https://dr-caffeine-mac.s3.amazonaws.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  conflicts_with cask: "caffeine"
  depends_on macos: ">= :ventura"

  app "Caffeine.app"

  uninstall quit: "net.domzilla.caffeine"

  zap trash: [
    "~/Library/Application Scripts/net.domzilla.caffeine",
    "~/Library/Containers/net.domzilla.caffeine",
  ]
end
