cask "birdfont" do
  version "4.31.4"
  sha256 "2eb96618ba468ff27173d9c327c3818b4c2147f7d483bfe5919d91abb39580aa"

  on_mojave :or_older do
    version "4.17.0"
    sha256 "74c778e3b7598a66b9ddb11b189ba6a21d68263fb0499a965dcedd0ac987b051"

    livecheck do
      url "https://birdfont.org/purchase.php"
      regex(%r{Mac\s*OS\s*10\.12.*?/birdfont[._-]v?(\d+(?:\.\d+)+)[._-]free\.dmg}i)
    end
  end

  url "https://birdfont.org/download/birdfont-#{version}-free.dmg"
  name "BirdFont"
  desc "Font editor"
  homepage "https://birdfont.org/"

  livecheck do
    url "https://birdfont.org/purchase.php"
    regex(%r{Mac\s*OS\s*10\.15.*?/birdfont[._-]v?(\d+(?:\.\d+)+)[._-]free\.dmg}i)
  end

  depends_on macos: ">= :sierra"

  app "BirdFontNonCommercial.app"
end
