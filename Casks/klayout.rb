cask "klayout" do
  version "0.27.10"

  if MacOS.version <= :catalina
    sha256 "5ee0c7c1ceb56188d9f3ce53d994c5c67e5c49a0531160d35d9db5d79dc7f5d2"

    url "https://www.klayout.org/downloads/MacOS/HW-klayout-#{version}-macOS-Catalina-1-qt5Brew-RsysPhb38.dmg",
        verified: "klayout.org/downloads/MacOS/"
  elsif MacOS.version <= :big_sur
    sha256 "19b8dc49b560f05d6a3f8cfe675f27923867e4a2a47c66cf75806ec1ad7eae82"

    url "https://www.klayout.org/downloads/MacOS/HW-klayout-#{version}-macOS-BigSur-1-qt5Brew-RsysPhb38.dmg",
        verified: "klayout.org/downloads/MacOS/"
  else
    sha256 "ec19992f86cf2ee5ff21857a3b4bd0dbbefa090144cebefe5e5bccc5e4083ef3"

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
