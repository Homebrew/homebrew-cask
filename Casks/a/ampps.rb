cask "ampps" do
  version "4.3"
  sha256 "10561cf7e4bfad96894716eb7a75d6d1957a9cb51c558a71a683a1bf85c99c7d"

  url "https://s1.softaculous.com/a/ampps/files/versions/AMPPS-#{version}-x86_64.dmg",
      verified: "s1.softaculous.com/a/ampps/"
  name "AMPPS"
  desc "Software stack for website development"
  homepage "https://www.ampps.com/"

  livecheck do
    url "https://api.ampps.com/download.php?arch=mac64"
    regex(/AMPPS[._-]v?(\d+(?:\.\d+)+)-x86_64\.dmg/i)
    strategy :header_match
  end

  suite "AMPPS"

  uninstall_preflight do
    set_permissions "#{appdir}/AMPPS", "0777"
  end

  caveats do
    requires_rosetta
  end
end
