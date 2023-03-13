cask "maintenance" do
  sha256 :no_check

  on_el_capitan do
    version "2.1.8"
    url "https://www.titanium-software.fr/download/1011/Maintenance.dmg"

    depends_on macos: :el_capitan
  end
  on_sierra do
    version "2.3.0"
    url "https://www.titanium-software.fr/download/1012/Maintenance.dmg"

    depends_on macos: :sierra
  end
  on_high_sierra do
    version "2.4.2"
    url "https://www.titanium-software.fr/download/1013/Maintenance.dmg"

    depends_on macos: :high_sierra
  end
  on_mojave do
    version "2.5.6"
    url "https://www.titanium-software.fr/download/1014/Maintenance.dmg"

    depends_on macos: :mojave
  end
  on_catalina do
    version "2.7.1"
    url "https://www.titanium-software.fr/download/1015/Maintenance.dmg"

    depends_on macos: :catalina
  end
  on_big_sur do
    version "2.8.2"
    url "https://www.titanium-software.fr/download/11/Maintenance.dmg"

    depends_on macos: :big_sur
  end
  on_monterey do
    version "2.9.2"
    url "https://www.titanium-software.fr/download/12/Maintenance.dmg"

    depends_on macos: :monterey
  end
  on_ventura do
    version "3.0.0"
    url "https://www.titanium-software.fr/download/13/Maintenance.dmg"

    depends_on macos: :ventura
  end

  name "Maintenance"
  desc "Operating system maintenance and cleaning utility"
  homepage "https://www.titanium-software.fr/en/maintenance.html"

  livecheck do
    url :homepage
    regex(/>\s*Maintenance\s+v?(\d+(?:\.\d+)+)\s+for\s+[\w\s.-]*\s+#{MacOS.version}\s*</i)
  end

  app "Maintenance.app"
end
