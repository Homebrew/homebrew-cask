cask "maintenance" do
  if MacOS.version <= :el_capitan
    version "2.1.8"
    sha256 "f27f5d0736e80cd80c85dcc5390dfeb893183424fe65b32b08e280c90b22b24c"
  elsif MacOS.version <= :sierra
    version "2.3.0"
    sha256 "8fde91742126d10234451a3c973461f5d84c771e52c6ee14aff93f1d66a0dbca"
  elsif MacOS.version <= :high_sierra
    version "2.4.2"
    sha256 "94c7a322d4d796afc5e52534f3564a562240d9c0ec0a60de210e68372fef2137"
  elsif MacOS.version <= :mojave
    version "2.5.6"
    sha256 "d3b0152ce543b84ed597daba3360f74c3f20b4fb2b41d71005f3a7b311d4d681"
  elsif MacOS.version <= :catalina
    version "2.7.1"
    sha256 "833e658f862f0a58dc6a073c70a67bed071b835167f73fc24e80386a36bfd38b"
  elsif MacOS.version <= :big_sur
    version "2.8.2"
    sha256 "e5f35a36eb1fcf46d599719c8ae2123e232f64b23a7741aaa4bf9ca3c78b76f9"
  else
    version "2.9.2"
    sha256 "04a6d9ff584cc7abbffdfa15730de58e1fc18dd76ffc05a099776ae3c56d4c18"
  end

  url "https://www.titanium-software.fr/download/#{MacOS.version.to_s.delete(".")}/Maintenance.dmg"
  name "Maintenance"
  desc "Operating system maintenance and cleaning utility"
  homepage "https://www.titanium-software.fr/en/maintenance.html"

  livecheck do
    url :homepage
    regex(/>\s*Maintenance\s+v?(\d+(?:\.\d+)+)\s+for\s+[\w\s.-]*\s+#{MacOS.version}\s*</i)
  end

  # Unusual case: The software may stop working, or may be dangerous to run, on the latest macOS release.
  depends_on macos: "<= :monterey"

  app "Maintenance.app"
end
