cask "ddnet" do
  version "18.9"
  sha256 "1211cde454d9857367ad27a71347b05c36e799d86cb0d51eb23fff36a7d52cd0"

  url "https://ddnet.org/downloads/DDNet-#{version}-macos.dmg"
  name "DDNet"
  desc "Cooperative online platform game based on Teeworlds"
  homepage "https://ddnet.org/"

  livecheck do
    url "https://ddnet.org/downloads/"
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
