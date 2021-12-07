cask "birdfont" do
  if MacOS.version <= :mojave
    version "4.17.0"
    sha256 "74c778e3b7598a66b9ddb11b189ba6a21d68263fb0499a965dcedd0ac987b051"
  elsif MacOS.version <= :catalina
    version "4.20.0"
    sha256 "10262559c24becf576cd8cc027fef458ec9f726a7ac2b173669506672dcf14ab"

    livecheck do
      url "https://birdfont.org/purchase.php"
      regex(%r{Mac\s*OS\s*10\.15.*?/birdfont[._-]v?(\d+(?:\.\d+)+)[._-]free\.dmg}i)
    end
  else
    version "4.21.1"
    sha256 "6f5ef7ac935b2f8987a85de7595fc0dd77c8f78580c64c05e309f3ae08fb1447"

    livecheck do
      url "https://birdfont.org/purchase.php"
      regex(%r{href=.*?/birdfont[._-]v?(\d+(?:\.\d+)+)[._-]free\.dmg}i)
    end
  end

  url "https://birdfont.org/download/birdfont-#{version}-free.dmg"
  name "BirdFont"
  desc "Font editor"
  homepage "https://birdfont.org/"

  depends_on macos: ">= :sierra"

  app "BirdFontNonCommercial.app"
end
