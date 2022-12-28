cask "maintenance" do
  sha256 :no_check

  on_el_capitan :or_older do
    version "2.1.8"
    url "https://www.titanium-software.fr/download/10.11/Maintenance.dmg"

    livecheck do
      url :homepage
      regex(/>\s*Maintenance\s+v?(\d+(?:\.\d+)+)\s+for\s+[\w\s.-]*\s+10\.11\s*</i)
    end
  end
  on_sierra do
    version "2.3.0"
    url "https://www.titanium-software.fr/download/1012/Maintenance.dmg"

    livecheck do
      url :homepage
      regex(/>\s*Maintenance\s+v?(\d+(?:\.\d+)+)\s+for\s+[\w\s.-]*\s+10\.12\s*</i)
    end
  end
  on_high_sierra do
    version "2.4.2"
    url "https://www.titanium-software.fr/download/1013/Maintenance.dmg"

    livecheck do
      url :homepage
      regex(/>\s*Maintenance\s+v?(\d+(?:\.\d+)+)\s+for\s+[\w\s.-]*\s+10\.13\s*</i)
    end
  end
  on_mojave do
    version "2.5.6"
    url "https://www.titanium-software.fr/download/1014/Maintenance.dmg"

    livecheck do
      url :homepage
      regex(/>\s*Maintenance\s+v?(\d+(?:\.\d+)+)\s+for\s+[\w\s.-]*\s+10\.14\s*</i)
    end
  end
  on_catalina do
    version "2.7.1"
    url "https://www.titanium-software.fr/download/1015/Maintenance.dmg"

    livecheck do
      url :homepage
      regex(/>\s*Maintenance\s+v?(\d+(?:\.\d+)+)\s+for\s+[\w\s.-]*\s+10\.15\s*</i)
    end
  end
  on_big_sur do
    version "2.8.2"
    url "https://www.titanium-software.fr/download/11/Maintenance.dmg"

    livecheck do
      url :homepage
      regex(/>\s*Maintenance\s+v?(\d+(?:\.\d+)+)\s+for\s+[\w\s.-]*\s+11\s*</i)
    end
  end
  on_monterey do
    version "2.9.2"
    url "https://www.titanium-software.fr/download/12/Maintenance.dmg"

    livecheck do
      url :homepage
      regex(/>\s*Maintenance\s+v?(\d+(?:\.\d+)+)\s+for\s+[\w\s.-]*\s+12\s*</i)
    end
  end
  on_ventura :or_newer do
    version "2.9.7"
    url "https://www.titanium-software.fr/download/13/Maintenance.dmg"

    livecheck do
      url :homepage
      regex(/>\s*Maintenance\s+v?(\d+(?:\.\d+)+)\s+for\s+[\w\s.-]*\s+13\s*</i)
    end
  end

  name "Maintenance"
  desc "Operating system maintenance and cleaning utility"
  homepage "https://www.titanium-software.fr/en/maintenance.html"

  # This software has releases for specific versions of macOS. Running a version for a different OS is dangerous.
  depends_on macos: "<= :ventura"

  app "Maintenance.app"
end
