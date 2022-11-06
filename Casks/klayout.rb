cask "klayout" do
  version "0.27.12"

  if MacOS.version <= :catalina
    macos_version_string = "Catalina"
    sha256 "021ac2b52527fa6ce7c6f477f530e78a46fefeab91dda5ef72f89afdf668996a"

  elsif MacOS.version <= :big_sur
    macos_version_string = "BigSur"
    sha256 "7921206602623e18f525fd3e13176e14d465ebc88a59a4112325bdea43a48a83"

  else
    macos_version_string = "Monterey"
    sha256 "cc74ae26712ad9146247bfe8e367fb4506223a3080c6eb037ee2d718baa56b8a"

  end
  url "https://www.klayout.org/downloads/MacOS/HW-klayout-#{version}-macOS-#{macos_version_string}-1-qt5Brew-RsysPhb38.dmg",
      verified: "klayout.org/downloads/MacOS/"
  name "KLayout"
  desc "IC design layout viewer and editor"
  homepage "https://www.klayout.de/"

  livecheck do
    url "https://www.klayout.de/build.html"
    regex(/href=.*?HW[._-]klayout[._-](\d+(?:\.\d+)+)[._-]macOS[._-]#{macos_version_string}.*?\.dmg/i)
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
