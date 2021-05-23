cask "birdfont" do
  if MacOS.version <= :mojave
    version "4.16.0"
    sha256 "74c778e3b7598a66b9ddb11b189ba6a21d68263fb0499a965dcedd0ac987b051"
  elsif MacOS.version <= :catalina
    version "4.17.1"
    sha256 "209762d6d0a50c74ff81c869b1de52f4e5a805086ac69e394e95cb7f844eb6f5"

    livecheck do
      url "https://birdfont.org/purchase.php"
      regex(%r{Mac\s*OS\s*10\.15.*?/birdfont[._-]v?(\d+(?:\.\d+)+)[._-]free\.dmg}i)
    end
  else
    version "4.17.2"
    sha256 "3dd08c8ae988900aeff4a62ad41248cdc9d30705d3ccfa9ef8753338b040a6b1"

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
