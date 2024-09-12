cask "nessus" do
  version "10.8.3"
  sha256 "6502852b546de17ced3cdd9cd670c86c621e452bca332d6f117fd12ee42ca806"

  url "https://www.tenable.com/downloads/api/v2/pages/nessus/files/Nessus-#{version}.dmg"
  name "Tenable Nessus"
  desc "Vulnerability scanner"
  homepage "https://www.tenable.com/products/nessus"

  livecheck do
    url "https://www.tenable.com/downloads/nessus"
    regex(/Nessus[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  pkg ".Nessus.pkg"

  uninstall launchctl: "com.tenablesecurity.nessusd",
            pkgutil:   "com.tenablesecurity.Nessus.Preferences"

  zap trash: "/Library/Nessus"
end
