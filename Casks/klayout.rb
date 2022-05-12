cask "klayout" do
  version "0.27.9"

  if MacOS.version <= :catalina
    sha256 "b6421122750f8f6ead00bc88fed22fd2ab3af029f9e0312924eb7b61357c311a"

    url "https://www.klayout.org/downloads/MacOS/HW-klayout-#{version}-macOS-Catalina-1-qt5Brew-RsysPhb38.dmg",
        verified: "klayout.org/downloads/MacOS/"
  elsif MacOS.version <= :big_sur
    sha256 "3f354835b51c5552eca458c2007f837d123c9aecc9e62696b0c3e37f672be2bd"

    url "https://www.klayout.org/downloads/MacOS/HW-klayout-#{version}-macOS-BigSur-1-qt5Brew-RsysPhb38.dmg",
        verified: "klayout.org/downloads/MacOS/"
  else
    sha256 "93e123cea3373bb02bb0aae462f1ef225d85a04d123fb7fbb7d5489daae34247"

    url "https://www.klayout.org/downloads/MacOS/HW-klayout-#{version}-macOS-Monterey-1-qt5Brew-RsysPhb38.dmg",
        verified: "klayout.org/downloads/MacOS/"
  end

  name "KLayout"
  desc "IC design layout viewer and editor"
  homepage "https://www.klayout.de/"

  livecheck do
    url "https://www.klayout.de/development.html"
    regex(%r{<b>Version\s+(\d+(?:\.\d+)+)</b>}i)
  end

  depends_on macos: ">= :catalina"

  suite "KLayout"

  preflight do
    # There is no sub-folder in the DMG; the root *is* the folder
    FileUtils.mv(staged_path.children, staged_path.join("KLayout").tap(&:mkpath))
  end

  uninstall pkgutil: "klayout.de",
            quit:    "klayout.de"
end
