cask "ampps" do
  version "4.2"
  sha256 "a5d9c3442bf57649e943f8995795b707a9e2d03ad673c027b45fcd96aab76f2f"

  url "https://s1.softaculous.com/a/ampps/files/versions/AMPPS-#{version}-x86_64.dmg",
      verified: "s1.softaculous.com/a/ampps/"
  name "AMPPS"
  desc "Software stack for website development"
  homepage "https://www.ampps.com/"

  livecheck do
    url "https://api.ampps.com/download.php?arch=mac64"
    strategy :header_match
    regex(/AMPPS[._-]v?(\d+(?:\.\d+)+)-x86_64\.dmg/i)
  end

  suite "AMPPS"

  uninstall_preflight do
    set_permissions "#{appdir}/AMPPS", "0777"
  end
end
