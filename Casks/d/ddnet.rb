cask "ddnet" do
  version "20.1"
  sha256 "84c3d88d5db0dd85dbda4dfc94bc36cabd7ec087164e1fefabea99a6336a8253"

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
