cask "eudic-es" do
  version "4.1.5,2021-10-29"
  sha256 "191a9ab8523948b61a24da92e556e4e42427eeba1a65f98c1616fe96118391e8"
  
  # static.frdic.com/ was verified as official when first introduced to the cask
  url "https://static.frdic.com/pkg/ehmac.dmg?v=#{version.after_comma}",
      verified:   "static.frdic.com/",
      user_agent: :fake
  
  name "Eshelper"
  name "西语助手"
  desc "Spanish Chinese dictionary and learning tool"
  homepage "https://www.eudic.net/v4/es/app/download"

  livecheck do
      url "https://www.eudic.net/update/eshelper_mac.xml"
      strategy :sparkle
  end

  app "Eudic_es.app"

  uninstall quit: [
    "com.eusoft.eshelper",
    "com.eusoft.eshelper.LightPeek",
    "com.eusoft.eshelper.QuickLook",
  ]

  zap trash: [
    "~/Library/Application Support/com.eusoft.eshelper",
    "~/Library/Caches/com.eusoft.eshelper",
    "~/Library/Caches/com.eusoft.eshelper.LightPeek",
    "~/Library/Containers/com.eusoft.eshelper.QuickLook",
    "~/Library/Eudb_fr",
    "~/Library/Preferences/com.eusoft.eshelper.LightPeek.plist",
    "~/Library/Preferences/com.eusoft.eshelper.plist",
    "~/Library/Preferences/group.com.eusoft.eshelper.plist",
  ]
end
