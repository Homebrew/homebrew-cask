cask "klayout" do
  version "0.26.8"

  if MacOS.version <= :high_sierra
    sha256 "b6ee7a8ee71e8cb218b6ecea4df6865cb1d0f49b646101246543bd7de1d6d5e7"

    url "https://www.klayout.org/downloads/MacOS/ST-klayout-#{version}-macOS-HighSierra-1-qt5MP-RsysPsys.dmg",
        verified: "klayout.org/"
  elsif MacOS.version <= :mojave
    sha256 "e3ade30ac217f312720d2157cd6e9afad566cbb239a08ecd55a6f9d8dc9af3e0"

    url "https://www.klayout.org/downloads/MacOS/ST-klayout-#{version}-macOS-Mojave-1-qt5MP-RsysPsys.dmg",
        verified: "klayout.org/"
  else
    sha256 "73641ce0c0f34bb21d43001f1f5924f60221a60458b131cb445fdf3f98c5dff5"

    url "https://www.klayout.org/downloads/MacOS/ST-klayout-#{version}-macOS-Catalina-1-qt5MP-RsysPsys.dmg",
        verified: "klayout.org/"
  end

  appcast "https://www.klayout.de/development.html"
  name "KLayout"
  homepage "https://www.klayout.de/"

  depends_on macos: ">= :mojave"

  suite "KLayout"

  preflight do
    # There is no sub-folder in the DMG; the root *is* the folder
    FileUtils.mv(staged_path.children, staged_path.join("KLayout").tap(&:mkpath))
  end

  uninstall pkgutil: "klayout.de",
            quit:    "klayout.de"
end
