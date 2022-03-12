cask "ddnet" do
  version "15.9.1"
  sha256 "42d159bc02c9e17df874400df822a6d5ef7301c200175e44598cb2f34a761df8"

  url "https://ddnet.tw/downloads/DDNet-#{version}-macos.dmg"
  name "DDNet"
  desc "Cooperative online platform game based on Teeworlds"
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
