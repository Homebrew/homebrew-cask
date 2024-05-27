cask "nessus" do
  version "10.7.3"
  sha256 "fed5c71773ee8e274eabaed2443279258300e696cdd3f16e416e3f3412b41393"

  url "https://www.tenable.com/downloads/api/v2/pages/nessus/files/Nessus-#{version}.dmg"
  name "Tenable Nessus"
  desc "Vulnerability scanner"
  homepage "https://www.tenable.com/products/nessus"

  livecheck do
    url "https://docs.tenable.com/release-notes/Content/nessus/2024.htm"
    regex(/Tenable\s*Nessus\s*v?(\d+(?:\.\d+)+)\s*/)
  end

  pkg ".Nessus.pkg"

  uninstall launchctl: "com.tenablesecurity.nessusd",
            pkgutil:   "com.tenablesecurity.Nessus.Preferences"

  zap trash: "/Library/Nessus"
end
