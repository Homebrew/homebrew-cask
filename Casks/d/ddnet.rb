cask "ddnet" do
  version "18.1"
  sha256 "a6cbedf543ead3c7cbadbbf8c5a5bbfed842de2950785bb455546f5e1cf3e44b"

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
