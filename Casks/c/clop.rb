cask "clop" do
  version "2.10.0"
  sha256 "15a057438da1db89c33e725bc41d11e3f7590f097bf9f7e2c8980ac944b59d4a"

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
