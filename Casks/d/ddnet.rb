cask "ddnet" do
  version "19.8"
  sha256 "17f4dee026352063ae075755b811f676dd3dadac2d04b228ea3566f8df6673cc"

  url "https://ddnet.org/downloads/DDNet-#{version}-macos.dmg"
  name "DDNet"
  desc "Cooperative online platform game based on Teeworlds"
  homepage "https://ddnet.org/"

  livecheck do
    url "https://ddnet.org/downloads/"
    regex(/href=.*?DDNet[._-]v?(\d+(?:\.\d+)+)[^"' >]*?\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "DDNet.app"
  app "DDNet-Server.app"

  zap trash: [
    "~/Library/Preferences/DDNet-Server-Launcher.plist",
    "~/Library/Saved Application State/org.DDNetClient.app.savedState",
    # "~/Library/Application Support/Teeworlds" is left out on purpose because teeworlds uses it as well.
  ]
end
