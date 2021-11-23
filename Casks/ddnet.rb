cask "ddnet" do
  version "15.6.2"
  sha256 "caee907c33c67544d8c0dec55c33c89f665027829749d730f6a2c0884cb6ee71"

  url "https://ddnet.tw/downloads/DDNet-#{version}-osx.dmg"
  name "DDNet"
  desc "Teeworlds version of DDRace"
  homepage "https://ddnet.tw/"

  livecheck do
    url "https://github.com/ddnet/ddnet/tags"
    strategy :page_match
    regex(/(\d+(?:\.\d+)+)\.zip/i)
  end

  auto_updates true

  app "DDNet.app"
  app "DDNet-Server.app"

  zap trash: [
    "~/Library/Preferences/DDNet-Server-Launcher.plist",
    "~/Library/Saved Application State/org.DDNetClient.app.savedState",
    # "~/Library/Application Support/Teeworlds/" is left out on purpose because teeworlds uses it as well.
  ]
end
