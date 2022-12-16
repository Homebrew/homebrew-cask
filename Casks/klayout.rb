cask "klayout" do
  version "0.27.13"

  if MacOS.version <= :catalina
    macos_version_string = "Catalina"
    sha256 "25d38cba66f4009f8ed19a755ec73863721a6f2e3b2d57257f077bf71ec5beba"

  elsif MacOS.version <= :big_sur
    macos_version_string = "BigSur"
    sha256 "d0216355390d83954611461ecd93d7cab0a819f7b0f98327b1c42d92da022fa7"

  else
    macos_version_string = "Monterey"
    sha256 "9326b5a1f7fe6f07f71ed6a1b3538d49c5c10184c1c57b77a527bd988a4dfb3c"

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
