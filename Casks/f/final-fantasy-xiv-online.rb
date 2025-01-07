cask "final-fantasy-xiv-online" do
  version "pnvdkzgk77dj10"
  sha256 "bbf756f78e9606779972d3c8d0864d665eecfcda4dfbe6260ae0a6b63f84cb65"

  url "https://gdl.square-enix.com/ffxiv/inst/#{version}/FINAL_FANTASY_XIV_ONLINE_x64.dmg",
      verified: "square-enix.com/ffxiv/inst/"
  name "Final Fantasy XIV"
  desc "Story-driven massively multiplayer online role-playing game"
  homepage "https://www.finalfantasyxiv.com/"

  livecheck do
    url "https://na.finalfantasyxiv.com/mac/download/"
    regex(%r{href=.*?inst/([^/]*)/FINAL[._-]FANTASY[._-]XIV[._-]ONLINE[._-]x64\.dmg}i)
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "FINAL FANTASY XIV ONLINE.app"

  uninstall trash: "~/Documents/My Games/FINAL FANTASY XIV - A Realm Reborn"

  zap trash: [
    "~/Library/Application Support/FINAL FANTASY XIV ONLINE",
    "~/Library/HTTPStorages/com.square-enix.finalfantasyxiv",
    "~/Library/Preferences/com.square-enix.finalfantasyxiv.plist",
  ]

  caveats do
    requires_rosetta
  end
end
