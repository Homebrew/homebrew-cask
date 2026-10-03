cask "ddnet" do
  version "20.1.1"
  sha256 "6da760f627197b58866d800572c361aad51875c438125aa4e196b83ba715887f"

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
