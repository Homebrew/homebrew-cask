cask "battle-net" do
  version "1.18.10.3141"
  sha256 :no_check

  language "en", default: true do
    url "https://www.battle.net/download/getInstallerForGame?os=mac&locale=enUS&version=LIVE&gameProgram=BATTLENET_APP"
  end
  language "zh", "CN" do
    url "https://www.battle.net/download/getInstallerForGame?os=mac&installer=Battle.net-Setup-zhCN.zip"
  end

  name "Blizzard Battle.net"
  desc "Online gaming platform"
  homepage "https://www.battle.net/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  installer manual: "Battle.net-Setup.app"

  preflight do
    set_permissions "#{staged_path}/Battle.net-Setup.app", "a+x"
  end

  uninstall delete: "/Applications/Battle.net.app"

  zap trash: [
        "/Users/Shared/Battle.net",
        "/Users/Shared/Blizzard",
        "~/Library/Application Support/Battle.net",
        "~/Library/Caches/net.battle.bootstrapper",
        "~/Library/Preferences/net.battle.app.helper.plist",
        "~/Library/Preferences/net.battle.Authenticator.prefs",
        "~/Library/Preferences/net.battle.Identity.prefs",
        "~/Library/Preferences/net.battle.net.app.plist",
        "~/Library/Preferences/net.battle.plist",
        "~/Library/Preferences/net.battnet.battle.plist",
        "~/Library/Saved Application State/net.battle.app.savedState",
      ],
      rmdir: "~/Blizzard"

  caveats do
    requires_rosetta
    <<~EOS
      If your installation directory is not /Applications, you will need to
      uninstall this cask manually.
    EOS
  end
end
