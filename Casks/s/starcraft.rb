cask "starcraft" do
  version "1.18.10.3141"
  sha256 :no_check

  url "https://www.battle.net/download/getInstallerForGame?os=MAC&version=LIVE&gameProgram=STARCRAFT",
      verified: "battle.net/"
  name "Starcraft"
  homepage "https://starcraft.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :el_capitan"

  installer manual: "StarCraft-Setup.app"

  uninstall delete: "/Applications/StarCraft"

  zap trash: [
    "/Users/Shared/Battle.net",
    "~/Library/Preferences/com.blizzard.Starcraft.plist",
    "~/Library/Preferences/com.blizzard.systemsurvey.plist",
    "~/Library/Preferences/net.battle.plist",
  ]

  caveats <<~EOS
    If your installation directory is not /Applications, you will need to
    uninstall this cask manually.
  EOS
end
