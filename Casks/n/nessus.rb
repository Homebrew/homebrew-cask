cask "nessus" do
  version "10.7.4"
  sha256 "41b680c51a3fd8636cd6803130e88246f2008fb53f0bf98cc8977b7d72176360"

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
