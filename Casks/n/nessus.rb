cask "nessus" do
  version "10.9.3"
  sha256 "c508e233cb54f16acd1d1a487b356b32c9e546a745d6d03837743d4fda12be76"

  url "https://www.tenable.com/downloads/api/v2/pages/nessus/files/Nessus-#{version}.dmg"
  name "Tenable Nessus"
  desc "Vulnerability scanner"
  homepage "https://www.tenable.com/products/nessus"

  livecheck do
    url "https://www.tenable.com/downloads/nessus"
    regex(/Nessus[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  pkg ".Nessus.pkg"
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
