cask "ddnet" do
  version "20.2.1"
  sha256 "7a6d1a4c7926b3aa403c71a1cfbee47b4bca0e9ac07a1c0f905260881ca6e78a"

  url "https://ddnet.org/downloads/DDNet-#{version}-macos.dmg"
  name "DDNet"
  desc "Cooperative online platform game based on Teeworlds"
  homepage "https://ddnet.org/"

  livecheck do
    url "https://ddnet.org/downloads/"
    regex(/href=.*?DDNet[._-]v?(\d+(?:\.\d+)+)[^"' >]*?\.dmg/i)
  end

  auto_updates true
  depends_on :macos

  app "DDNet.app"
  app "DDNet-Server.app"

  uninstall launchctl: "application.DDNetServer.app.*",
            quit:      "org.DDNetClient.app"

  zap trash: [
    "~/Library/Application Support/DDNet",
    "~/Library/Preferences/DDNet-Server-Launcher.plist",
    "~/Library/Saved Application State/org.DDNetClient.app.savedState",
    # "~/Library/Application Support/Teeworlds" is left out on purpose because teeworlds uses it as well.
  ]
end
