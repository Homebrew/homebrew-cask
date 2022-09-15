cask "birdfont" do
  if MacOS.version <= :mojave
    version "4.17.0"
    sha256 "74c778e3b7598a66b9ddb11b189ba6a21d68263fb0499a965dcedd0ac987b051"

    livecheck do
      url "https://birdfont.org/purchase.php"
      regex(%r{Mac\s*OS\s*10\.12.*?/birdfont[._-]v?(\d+(?:\.\d+)+)[._-]free\.dmg}i)
    end
  else
    version "4.30.11"
    sha256 "5502a545f5e806a67f3032526818af8d9b07629b8e8e6f61265d28b80c911fab"

    livecheck do
      url "https://birdfont.org/purchase.php"
      regex(%r{Mac\s*OS\s*10\.15.*?/birdfont[._-]v?(\d+(?:\.\d+)+)[._-]free\.dmg}i)
    end
  end

  url "https://birdfont.org/download/birdfont-#{version}-free.dmg"
  name "BirdFont"
  desc "Font editor"
  homepage "https://birdfont.org/"

  depends_on macos: ">= :sierra"

  app "BirdFontNonCommercial.app"
end
