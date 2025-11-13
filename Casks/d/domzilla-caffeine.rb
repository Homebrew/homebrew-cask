cask "domzilla-caffeine" do
  version "1.6.1"
  sha256 "d96e489390494988d2532e098904e78198bb9ca094056e59f2c768e5c62bc82e"

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
