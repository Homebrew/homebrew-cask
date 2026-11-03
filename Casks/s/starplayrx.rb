cask "starplayrx" do
  version "1.1.15"
  sha256 "28d9606cb80d3feecc06e3e8185e83b1e43852515828244ab840ca033fcba310"

  url "https://github.com/AgentiLoop/StarPlayrX/releases/download/mac-#{version}/StarPlayrX-Mac-#{version}.dmg"
  name "StarPlayrX"
  name "StarPlayrX for Mac"
  desc "SiriusXM player for the menu bar"
  homepage "https://starplayrx.com/"

  livecheck do
    url :url
    regex(/^mac[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :ventura

  app "StarPlayrX.app"

  zap trash: [
    "~/Library/Caches/com.starplayrx.mac",
    "~/Library/HTTPStorages/com.starplayrx.mac",
    "~/Library/HTTPStorages/com.starplayrx.mac.binarycookies",
    "~/Library/Preferences/com.starplayrx.mac.plist",
  ]
end
