cask "domzilla-caffeine" do
  version "1.5.1"
  sha256 "04f032f9616acda0a2ad3dadeaa6d7e863d6f6b13664a7c0caf6ed8b4478c4e7"

  url "https://dr-caffeine-mac.s3.amazonaws.com/Caffeine_#{version}.zip",
      verified: "dr-caffeine-mac.s3.amazonaws.com/"
  name "Caffeine"
  desc "Utility that prevents the system from going to sleep"
  homepage "https://www.caffeine-app.net/"

  livecheck do
    url "https://dr-caffeine-mac.s3.amazonaws.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  conflicts_with cask: "caffeine"
  depends_on macos: ">= :big_sur"

  app "Caffeine.app"

  uninstall quit: "net.domzilla.caffeine"

  zap trash: [
    "~/Library/Application Scripts/net.domzilla.caffeine",
    "~/Library/Containers/net.domzilla.caffeine",
  ]
end
