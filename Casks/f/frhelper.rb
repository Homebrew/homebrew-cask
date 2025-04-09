cask "frhelper" do
  version "11.6.0"
  sha256 "2af5b8bcb7d1c1917d8dcb69af5e6760915b4557fbd91783317afbec9403d164"

  url "https://static.eudic.net/pkg/fhmac.dmg?v=#{version}",
      user_agent: :fake
  name "Frhelper"
  name "法语助手"
  desc "French-Chinese dictionary and learning tool"
  homepage "https://www.eudic.net/v4/fr/app/frhelper"

  livecheck do
    url :homepage
    regex(/应用版本：(\d+(\.\d+)+)/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Frhelper.app"

  uninstall quit: [
    "com.eusoft.frhelper",
    "com.eusoft.frhelper.LightPeek",
    "com.eusoft.frhelper.QuickLook",
  ]

  zap trash: [
    "~/Library/Application Support/com.eusoft.frhelper",
    "~/Library/Caches/com.eusoft.frhelper",
    "~/Library/Caches/com.eusoft.frhelper.LightPeek",
    "~/Library/Containers/com.eusoft.frhelper.QuickLook",
    "~/Library/Eudb_fr",
    "~/Library/Preferences/com.eusoft.frhelper.LightPeek.plist",
    "~/Library/Preferences/com.eusoft.frhelper.plist",
    "~/Library/Preferences/group.com.eusoft.frhelper.plist",
  ]
end
