cask "squidman" do
  version "4.2"
  sha256 "281e73b703b148448862fd3be8d31966f4c95339e4227d9ffc67ae698b2c9ef2"

  url "https://squidman.net/resources/downloads/SquidMan#{version}.dmg"
  name "SquidMan"
  desc "Manage and install Squid proxy cache"
  homepage "https://squidman.net/squidman/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/resources/downloads/?[^>]+?>\s*version\s+v?(\d+(?:\.\d+)+)\s*<}im)
  end

  app "SquidMan.app"

  zap trash: [
    "/Library/LaunchDaemons/com.mac.adg.SquidMan.plist",
    "/Library/PrivilegedHelperTools/com.mac.adg.SquidMan",
    "/usr/local/squid",
    "~/Library/Caches/squid",
    "~/Library/Logs/squid",
    "~/Library/Preferences/com.mac.adg.SquidMan.plist",
    "~/Library/Preferences/squid.conf",
    "~/Library/Saved Application State/com.mac.adg.SquidMan.savedState",
  ]

  caveats do
    files_in_usr_local
  end
end
