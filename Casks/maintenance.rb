cask "maintenance" do
  sha256 :no_check

  on_el_capitan do
    version "2.1.8"
    sha256 "f27f5d0736e80cd80c85dcc5390dfeb893183424fe65b32b08e280c90b22b24c"

    depends_on macos: :el_capitan
  end
  on_sierra do
    version "2.3.0"
    sha256 "8fde91742126d10234451a3c973461f5d84c771e52c6ee14aff93f1d66a0dbca"

    depends_on macos: :sierra
  end
  on_high_sierra do
    version "2.4.2"
    sha256 "94c7a322d4d796afc5e52534f3564a562240d9c0ec0a60de210e68372fef2137"

    depends_on macos: :high_sierra
  end
  on_mojave do
    version "2.5.6"
    sha256 "d3b0152ce543b84ed597daba3360f74c3f20b4fb2b41d71005f3a7b311d4d681"

    depends_on macos: :mojave
  end
  on_catalina do
    version "2.7.1"
    sha256 "833e658f862f0a58dc6a073c70a67bed071b835167f73fc24e80386a36bfd38b"

    depends_on macos: :catalina
  end
  on_big_sur do
    version "2.8.2"
    sha256 "e5f35a36eb1fcf46d599719c8ae2123e232f64b23a7741aaa4bf9ca3c78b76f9"

    depends_on macos: :big_sur
  end
  on_monterey do
    version "2.9.2"
    sha256 "04a6d9ff584cc7abbffdfa15730de58e1fc18dd76ffc05a099776ae3c56d4c18"

    depends_on macos: :monterey
  end
  on_ventura do
    version "2.9.8"
    sha256 "99b36dc94c3c3390f66d433c10787473f98b6c600ed75d5a9c5d08bc70eb1e95"

    depends_on macos: :ventura
  end

  url "https://www.titanium-software.fr/download/#{MacOS.version.to_s.delete(".")}/Maintenance.dmg"
  name "Maintenance"
  desc "Operating system maintenance and cleaning utility"
  homepage "https://www.titanium-software.fr/en/maintenance.html"

  livecheck do
    url :homepage
    regex(/>\s*Maintenance\s+v?(\d+(?:\.\d+)+)\s+for\s+[\w\s.-]*\s+#{MacOS.version}\s*</i)
  end

  app "Maintenance.app"
end
