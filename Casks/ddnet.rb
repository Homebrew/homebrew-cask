cask "ddnet" do
  version "16.6"
  sha256 "16408e410c03d1fe1f481a87b057c2af0246522ab618643c3fae20f161a24bcd"

  url "https://ddnet.tw/downloads/DDNet-#{version}-macos.dmg"
  name "DDNet"
  desc "Cooperative online platform game based on Teeworlds"
  homepage "https://ddnet.tw/"

  livecheck do
    url "https://ddnet.tw/downloads/"
    regex(/href=.*?DDNet[._-]v?(\d+(?:\.\d+)+)[^"' >]*?\.dmg/i)
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
