cask "ddnet" do
  version "16.0.1"
  sha256 "837c108bc6f9ed3b3cfc840e4515900bd7af0eec756ca536fdd13a4360197c6f"

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
