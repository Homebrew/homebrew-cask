cask "ampps" do
  version "4.4"
  sha256 "77b1107c02b7ca33cefa785432867f9706ac3eeaa3ab3723c8b63a1f30cfb28c"

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
