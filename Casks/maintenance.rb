cask "maintenance" do
  if MacOS.version <= :yosemite
    version "2.0.7"
    sha256 "5c926159c0610fe705b0f23b56672f1c5e46c970f92013839c772147379520f9"
  elsif MacOS.version <= :el_capitan
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
    version "2.8.1"
    sha256 "d46d4b2a28779ec02b1ae208f80c504cb5726f43f29ff1ae247206050e26ede0"
  else
    version "2.8.8"
    sha256 "ae4372b58ca61d43c452cb7d161bb32a478a89c0301291f55791f30924f4dee8"
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
