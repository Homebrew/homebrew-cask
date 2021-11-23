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
    version "4.20.1"
    sha256 "ebc718a984346ed1ed93551d1b7ad79d6b848492e6dde0723f2f2121a550bf20"

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
