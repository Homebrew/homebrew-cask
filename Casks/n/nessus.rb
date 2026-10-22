cask "nessus" do
  version "10.12.6"
  sha256 "609e1a42a357ccb71dba35b215b7af59c13efadc98dfcbc719e69b20fac08f7b"

  url "https://www.tenable.com/downloads/api/v2/pages/nessus/files/Nessus-#{version}.dmg"
  name "Tenable Nessus"
  desc "Vulnerability scanner"
  homepage "https://www.tenable.com/products/nessus"

  livecheck do
    url "https://www.tenable.com/downloads/nessus"
    regex(/Nessus[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on :macos

  pkg "Install Nessus.pkg"
  binary "/Library/Nessus/run/bin/nasl"
  binary "/Library/Nessus/run/bin/ndbg"
  binary "/Library/Nessus/run/sbin/nessuscli", target: "#{HOMEBREW_PREFIX}/sbin/nessuscli"
  binary "/Library/Nessus/run/sbin/nessusmgt", target: "#{HOMEBREW_PREFIX}/sbin/nessusmgt"

  uninstall launchctl: "com.tenablesecurity.nessusd",
            pkgutil:   "com.tenablesecurity.Nessus.Preferences"

  zap trash: "/Library/Nessus"

  caveats do
    free_license "https://www.tenable.com/products/nessus/nessus-essentials"
  end
end
