cask "ddnet" do
  version "20.0"
  sha256 "39a4e1825a17e4746433def14b58f9a39f2c21158bb4d58f91f42019558d6a45"

  url "https://ddnet.org/downloads/DDNet-#{version}-macos.dmg"
  name "DDNet"
  desc "Cooperative online platform game based on Teeworlds"
  homepage "https://ddnet.org/"

  livecheck do
    url "https://ddnet.org/downloads/"
    regex(/href=.*?DDNet[._-]v?(\d+(?:\.\d+)+)[^"' >]*?\.dmg/i)
  end

  auto_updates true
  depends_on macos: :big_sur

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
