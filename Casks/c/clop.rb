cask "clop" do
  version "2.6.4"
  sha256 "4212c53cc392eb1b79a2b9b5861206ad21472c01a193b70c25a50a370826f9c7"

  url "https://files.lowtechguys.com/releases/Clop-#{version}.dmg"
  name "Clop"
  desc "Image, video and clipboard optimiser"
  homepage "https://lowtechguys.com/clop/"

  livecheck do
    url "https://files.lowtechguys.com/clop/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Clop.app"

  zap trash: [
    "~/Library/Application Scripts/com.lowtechguys.Clop",
    "~/Library/Application Scripts/com.lowtechguys.Clop.FinderOptimiser",
    "~/Library/Application Support/Clop",
    "~/Library/Caches/Clop",
    "~/Library/Containers/com.lowtechguys.Clop.FinderOptimiser",
    "~/Library/Daemon Containers/54F7B6C1*/Data/com.apple.kvs/ChangeTokens/NoEncryption/Clop/*.com.lowtechguys.Clop",
    "~/Library/HTTPStorages/com.lowtechguys.Clop",
    "~/Library/HTTPStorages/com.lowtechguys.Clop.binarycookies",
    "~/Library/Preferences/com.lowtechguys.Clop.plist",
  ]
end
