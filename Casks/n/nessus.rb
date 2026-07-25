cask "nessus" do
  version "10.12.2"
  sha256 "e322980521eca5475b9e6630faf4e54418226e30a06eb908c6a1d0b8098a1e1a"

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
